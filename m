Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3095EC982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REHpvJ0gcPy8I0Uj9748eDzcv8q1mkTdFUSn7rM0pVs=; b=XrVvLJ55oSgyxK
	wHDGFJMh7wUfzVb+6lVzb+V+Uo723Bo9JSeXZnefxK2XC2z6LtEmqsPyUXuDBZV2LX5Z06u79rhTW
	r5DSTl9KqG6fI11bh9Z2QaH4LxFaiW+MRBO+Z6Da5PXxTX1sZNDYigBgfe6k7XO2vIVJTnvAqUGR7
	b4CtwvlPWfMOJXsPqMMQqOh/R6aTwyFcYJw7oB/6NH1Z9hTx0yoxvhrqHYLfRHmNsiLAOr8jemOWg
	pq0Iehk1uUiumPRGUX8WOWDtPAuNcz0hkDXgF6nJMxNuOQucrGgzXJMhHc/2/vs2RWCXGfPSJaxwh
	5Euq3cQc6B9hWglbxYRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ipm-00000007dky-3IdR;
	Wed, 23 Sep 2026 09:00:10 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ipi-00000007dj5-4AK0
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 09:00:08 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49fbdc010d7so98195e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 02:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790154005; x=1790758805; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FbzAJg9KFAd0XK3d8yi6dKFFaejwIzukaaxckgS1/bE=;
        b=iRmB+tzAyB94AQUfD+nnHRv5vysnF38dNL8ToTM9pmk68ZeE1wsfR2I4hbbKv6eH8W
         mRNC9KwbgvIzVNwf3zE9XP6zK01ymFD76T8VHymDy4f83cwNvvI1+CytEquuK2miS2+P
         pl/XIdCkwSIgjNXYq85nvhRw4NRfth7MSWW5Rn40cuAvpIEfJ6bxHQLtjAuzf4H204kF
         6TjaDLFLLNY6ZEy83rVXvw1Zy6jW7mr3qFze16Ntf6pnkVxYFUwPomN0a8tQSXlLPDnl
         VJx1oiAhQ44xYadJ/Ue/Rf4M6Y725lK0eDoNPiFb7942kLSupEJOgZSeFzmclRoZ922n
         CLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790154005; x=1790758805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FbzAJg9KFAd0XK3d8yi6dKFFaejwIzukaaxckgS1/bE=;
        b=CP9uHRSYm2P7fQEfMjfYxGKQEZc9TyeTogUEi9PeuKduygiD67IwwBkaPg4jMhbgHp
         MVTv9iJQixV+jqfCfS2SMMsTiERn+yNJHXCRTQvjZHruBgrqQsIYMvwcI6t0gD9SJT9O
         KKpzAO5iwLvvgKbm4h375aLFO33jfhy8FtYdqSLLgE3N8HLOLb259xEy4g3P9MVxR/mZ
         iXxHywKGTay4TBCyA02M4inyh3Alofi1PXFz+nbjEGcCxL+v22F3JUC7jDp6s3vT1W2Z
         BMo9xpxCW94u3m0HMY/kRsDcLQ2xP7wzdW+XB1tlz9MGYQd23bf4EbcP29ksNzRizOeZ
         c+uQ==
X-Forwarded-Encrypted: i=1; AKwUvByEP7ncEYLbNhpbV4culK/f1ZirPvzhiqnMrCidYbB6NNpNruLAoDpEQEi63px6vTQ8PKp+iBv6hsgdHbH55g==@lists.infradead.org
X-Gm-Message-State: AFuF++kF0v2SI36+r/Y/8UVMz0HPXXiA3fuf2IEKhj/KmNBuEAzyZyWA
	KcrJmJnG7FcjOGGGsdePr7RDngPcJzfifpBp2Bfa9lebzl2SI34KLreM
X-Gm-Gg: AYBFou25xNwfmt+yQFb8+Mm5V4zCaifpWNkm8DjL6uRgwY7gy2Hjw3jOLlPfvLnLYTb
	a4hnNxKJQKBdzGk8SFmMGZ+P+oxnI5BdwaLCncDVVdqu+NB57nZGBOVfLhnxXn0+iLKBTSH3H+y
	mEjaOK4eaUrP9DXwnBleoX9j9rjpYIWXO83RB284AFq4DAonXxHYWAv/FRTuYKQl6A86eO7u3Xl
	ZAZle6Z5bjlHqcZRs42CW1s6/qVprmL/jeKoWO856jhBDLJi4/gKI5sfiPOCaUuLzmG8n5sstEJ
	VOZ79YX9IwW2Z60H6r+2rGK89C+t3LZG369G/AJJH/34JR/2akuTpBnyTDbZztjNLw9QbwYlw3o
	GRLff1NsdhH4TREf45NSLrZ/6AwqXz+AVx4S8s80HtvoSj7V8lDVcPi0I3Qak4hm6D7ljXEwl4B
	qOi3j8jpiKB234i5eGnXgFZrDRKuiAk0/PvvqNDyh8bf++tkYZcpnnGP70ahVYj6GA0IAHwvTZF
	lBg6QIcWhd/Zy22OiClOfvBIzfUA7y+u9ZLwNb+4FsTOeQqxdNLXRBdDOxS81xX
X-Received: by 2002:a05:600c:4f86:b0:49e:6683:d227 with SMTP id 5b1f17b1804b1-49fdec5dc40mr23139865e9.0.1790154004654;
        Wed, 23 Sep 2026 02:00:04 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500D949869966507951.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:d949:8699:6650:7951])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fde197466sm56190915e9.7.2026.09.23.02.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 02:00:04 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
Date: Wed, 23 Sep 2026 10:59:41 +0200
Message-ID: <20260923085941.16418-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <arMyLlcFKgtlwW_T@vbox>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com> <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com> <arMyLlcFKgtlwW_T@vbox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_020007_069169_607FB4D9 
X-CRM114-Status: UNSURE (   8.60  )
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

On Wed, Sep 23, 2026 at 01:58:19AM +0000, Thinh Nguyen wrote:
> Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

Hi Sebastian,

a heads-up before v2, now that this patch has an Ack: the build issue
I reported in [1] is still open. With dwc3 host-only and USB_GADGET
either disabled, or a module while the glue is built in, the build
fails with usb_udc_vbus_handler undefined. The dwc->gadget test in
dwc3_rockchip_vbus_handler() is a runtime one, so the call is always
compiled in, and include/linux/usb/gadget.h has no stub for it.

No new build was run; the result is the one from [1]. An LLM assistant
helped draft this mail.

[1] https://lore.kernel.org/all/20260918091032.15593-1-royalnet026@gmail.com/

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
