Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E0BDC44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 16:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89S6Ok5KhNmPbirl2m/XyMM8K2+2QJ9rLzD4+t1mMKw=; b=tL/rEBojTDnH/1
	tzEaYVMHNEHGFJR0GgrfgkK+bHXcBUSBvWOpRmg3Zgiji0YQ9OzuQoDNoMsmv0fKVEOFfHLczvgPo
	/1ydUrgxnCyWMWZbsQXzR85Do3jNxb09/qgNtokPzBtKhOcEQLCLGIyx4CVSgEbJxJQugZzDlMb6c
	q02XQ47k8o6TDFeZy1OrADx2DIovpVtDCZiDHMakNpugf+kCTs8Eg6U/fAclHWmgt9Ri9BghD4S1Q
	q68f+7Ned8WrS13VMqmchrBJfxrmVC3w5fgr/ZCfh4eqy07Vusu4Sr9zyd8WlXFz7lRg+45+EBcrI
	bMJw034SpmUdxsWsUGbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlqen-00000007LHJ-2uRI;
	Mon, 20 Jul 2026 16:15:53 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlqel-00000007LFu-0EOl
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 16:15:52 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-8486672f03cso10251597b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 09:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784564150; x=1785168950; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=3tTr+RGt8QXwsbvuUoMSTPv8PVwzNX3CqkyBWX78eok=;
        b=eravRywp6s6ecd6UFVROJRkdOM9iPxTRuOOtsMCSxnWpQ127Ej4Qhddc4KwM9eGASV
         faOaqMLNYWTSpTAUpKi7twM/dFNDXPxg6u9PaF8+dW5dScNDhyj3Qtioi1xnDW+jhlh3
         0vxY5ppyrOkpBs4/bk8xu1JNtxqde3uKTulHuqGqKoKvh3+VF9y5fNB/TtSnqDgCv+Je
         TUj8f22KkOHvSpLokBoLPbJclmwaoA8i3gd+TacWQSTdGee5eaL2fnZuivy0iPfsXE4a
         G2q1/0uPi/B3J/Cjhn6DNhV9kHqd4hIPco4zf8qY0X8SH0yZ68EjEhg2i1TTtmOgCUPv
         BqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784564150; x=1785168950;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3tTr+RGt8QXwsbvuUoMSTPv8PVwzNX3CqkyBWX78eok=;
        b=peQ1y1aPSLD3qLIV4J+rzN9TxjEygwaUf+aMBbsshrJ0WdaaPLsEz6VecQfbP2xdmS
         /vx9zvsHkqSdDAkm0r6tqYUFgLcSsORzffxrLitJgT567YxrVv9igxQFKW2WxpiEbmG3
         KUXTvYEYGsn77kSeDhKlCcrbEqkP/pfd/cBWJbEA7l7mwHxutS0U0hqI7EnDl5AUVqxj
         qd+s99hx5NC6CVeEeIIcuJ277x0kQrD43dXIqcgYvonSAMW2wf1f8ePfosv1M/NTTAdX
         VXRjzX8sW5Yr/l2DgEURF5lHDxo0mReQeGx4rU6L4ex2bUhz0tu4FFyZU3Wo4JA+2gqX
         bJOg==
X-Forwarded-Encrypted: i=1; AHgh+RrDClNsTT+CusRBEh1tHNhLcdMLM9+enuzAMgKfYvkqiPhXvuTWFDXdBCfH+pBtBVq1RNRCy4MqmBm4M8oV8g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTWuft9uiI0tCbLXsudwcOI3ZGm6pDtlqWAb9cU5esM+sGG3hY
	BWm0EuZwA107y8nruJUBx3Qe7y1Zi/Q4mwKsq0Waqp328Omx2KYJ/hSD
X-Gm-Gg: AfdE7ckzDoEYlChCHxQ7QaeaUW3Lmq7cHF0CqvFEqXAt+aiTkrzSp4/29q+yPKxVa+/
	mP0q9B/jS8yGBYIoZqyLftFOdVj0Uc9gGQdAkPPog8LBn9LhxuTl7fcO9zxq1JwbXkuBA7WmWL1
	g+JKbsUXCBQZ80iuHO7kHeWsOLyqJM3usimO4zuVQPfUKx+2HIihOd/NtE1qoEi+2A3ygctliP5
	IfwtGv4TiPCZE0yYFA4vQHBCbQXNl4ni978dmtuj1ug7aVAiPRzLZdYqLutUJxDB5JbOng/96El
	wKxt47/LvH5akBQUBbn2wkEAPN/kBrPZyGkd/0Mt2ICPABUWKnyHcRHiFwbZsFXsPluNTygV+8X
	/EU9tkCOfznSdQPPk9r0OyKXxk0HdNw/jVjhSr7CtYopmoJWh5QUSAAnn/+IjQ8QdSgDSVH/zXq
	PS83fnCl5wKy6fo8E=
X-Received: by 2002:a05:6a20:914f:b0:3c3:ad17:eded with SMTP id adf61e73a8af0-3c3ad947d8amr15223942637.36.1784564150015;
        Mon, 20 Jul 2026 09:15:50 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9d439sm45298283eec.5.2026.07.20.09.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 09:15:49 -0700 (PDT)
Date: Mon, 20 Jul 2026 09:15:48 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Simon Glass <sjg@chromium.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-watchdog@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Jamie Iles <jamie@jamieiles.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: snps,dw-wdt: Add RV1106
 compatible
Message-ID: <434ac32d-9f3d-4b5d-aeb2-91ce317f8e70@roeck-us.net>
References: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_091551_123874_0633E016 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jul 14, 2026 at 01:18:57PM -0600, Simon Glass wrote:
> Add the compatible for the watchdog of the Rockchip RV1106, which is
> compatible with the Synopsys DesignWare watchdog.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Applied.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
