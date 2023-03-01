/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.web.ui.purchaseorder;

import com.haulmont.thesis.web.ui.basicdoc.browse.AbstractDocBrowser;
import com.company.bookstore.entity.PurchaseOrder;

import java.util.Map;

public class PurchaseOrderBrowse<T extends PurchaseOrder> extends AbstractDocBrowser<T> {
    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        entityName = "bookstore$PurchaseOrder";
    }
}