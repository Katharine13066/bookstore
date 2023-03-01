/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.core.app.reassignment.commands;

import com.haulmont.thesis.core.app.reassignment.commands.AbstractDocReassignmentCommand;
import com.company.bookstore.entity.PurchaseOrder;

import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component(PurchaseOrderReassignmentCommand.NAME)
public class PurchaseOrderReassignmentCommand extends AbstractDocReassignmentCommand<PurchaseOrder> {
    protected static final String NAME = "bookstore_PurchaseOrderReassignmentCommand";

    @PostConstruct
    protected void postInit() {
        type = "PurchaseOrder";
        docQuery = String.format(DOC_QUERY_TEMPLATE, "bookstore$PurchaseOrder");
    }

    @Override
    public String getName() {
        return NAME;
    }
}