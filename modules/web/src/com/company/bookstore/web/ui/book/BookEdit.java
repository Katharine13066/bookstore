/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.web.ui.book;

import com.haulmont.cuba.gui.components.AbstractEditor;
import com.company.bookstore.entity.Book;
import java.util.Map;


public class BookEdit<T extends Book> extends AbstractEditor<T> {
    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        
    }
}