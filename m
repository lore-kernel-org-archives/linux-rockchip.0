Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDA4FC4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6683F2076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uUuchFSc";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="RZqLuJOp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UHuHKb1w"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6683F2076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Et9bnnJA6iG/rLDpchCS0bxRlQgBQpayEZxT3kS/J04=; b=uUuchFScHUR3b189VxGoFe7ZJ
	f8UsD3AWi3Om64ppw6AXlm4tP08vMxQfTIMrkiKhGBiZRvq0lhUCP+2B5eja79gFOoVCDXlh6tcMW
	jMKsd4XE4kDjzdc8zOgaaRAIzqfKZO020x0rI+aSdsKP1RRjZvgOEcW42y9nVk5DvaClraJvvH8DI
	IFlobhRZIHWby2I07FDdu6ukufcnoeKBQcQobYcNNVf8GItjsuaM6kF4iqVsqswrCzIfmkLURi6uT
	mE/kogci38lrqpqANoN6L8/4hzO62dVDKr8sd1TSuh3KeTNQNgl+PT/jkgOeG2b5Jc3VblJ6y2YsU
	gHPmjrGRQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kegXA-0004fY-1W; Mon, 16 Nov 2020 15:35:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegQg-0001TW-6H; Mon, 16 Nov 2020 15:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=eWtERLXExs4DoM6gWGaTUFy6iPC/nCVkimSM+qIDVKM=; b=RZqLuJOpu1Jh2eT0FovM5VjZBD
 68c5MPR8nuwlrXCz8KN/dAk5oDaR04d9WZmnssPGmelKS+l25SyEs8LETRbImd6eB7BCAzNVsanlG
 rU/AbCP1gT+VTscXhuNFeQ9Rv0PJd5rFpz902eARSbqROnhPvuTs/CD8UK+IbEWg/Ar7Tt/ekhG5S
 Ksf1+shXUzmxIn6zLlTNURs4EdEn9elKsGjOGoVwmrVKnCNGC41ERv/gZrHXMtKkxCF1hpPvhbVwZ
 fGW6PPV8iYBJ9ptpKMej9Prn9Xu3nmPlIr7c/flyPh2nQMkFVsCiNjA4ih/CTXFKIHljhxe3DBeXG
 dfEe96uQ==;
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegHu-0006sv-4T; Mon, 16 Nov 2020 15:19:30 +0000
Received: by mail-qt1-x844.google.com with SMTP id f93so13042784qtb.10;
 Mon, 16 Nov 2020 07:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eWtERLXExs4DoM6gWGaTUFy6iPC/nCVkimSM+qIDVKM=;
 b=UHuHKb1wyzJgScpQpTHI+khKWYoA0r+5oV4I4cL+EXw762BNPY6IkiLTLnw7WI6vXX
 XFRXGWlHjy3L/v6/t8qZGt/ACYNMjAXyVJXA2jP1QltuyhGKVzJe0xsM52OpnSRgzh5e
 azZNUKR0ppmLCIEr61/CjjMSwazJcDSjYNBkTOmfSgp2yZawPeHX/Ie0w2k8yY1yzUSs
 Rqnu/m/uLC4WLFZsjftlmMaMdRJfPoAlIKQs+yVyyzuhJXhfR755gLQ5h4VoNQDy/A4Z
 SGQwkxLqM6Jd5yX5mXQvG+QFggL6XzgC12DqJ2XMhvykSOYVz8KjgQ3lbpi2orB/fACo
 ztfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eWtERLXExs4DoM6gWGaTUFy6iPC/nCVkimSM+qIDVKM=;
 b=lq4dY7b0JW7rBnuD9c2rllEjn5Bel4Hf2NeM10R8P1EsIJSbVqhBMBo/d5uAJIERm5
 1WndZcLiqaA5K7g9IVYxmH6Xx/iUSZ1V2wRiwzI+6wmfGXDkSWFYuEHcJrKC9I+1mqXr
 t7/OhaqatQs6jLPEWWOz2TfMV3u0AWbUeOe5YV4AtCXPojQCwIphU0BrqheQvje8QIHS
 FSkLacK1/k1DevrbJs2MVL9Jj72HJ7l8PoHyxRsqHA+acPr/WcG/gy8XSrEu1VHaLgjy
 osInPMUsBpfC8PYx4sy5siFK9bkvHp4yNorlmoAE9KEy32eczeRWhNjgBIZwGHvPXGMh
 LGdg==
X-Gm-Message-State: AOAM532vtMLkHMB9ChIpzBeitLngNf6qoArsoHgdr8e747hiV4i0d79z
 8uZRU6fzZYPWowct2alx3AU=
X-Google-Smtp-Source: ABdhPJwYnI/O7MjyagGSH+7FQMKnfE01e57JG2POD/MrOpJLlI2if5o0NkVRHFEUiDoG5h7TqaOQmg==
X-Received: by 2002:aed:3263:: with SMTP id y90mr14509217qtd.196.1605539964181; 
 Mon, 16 Nov 2020 07:19:24 -0800 (PST)
Received: from rockpro64.sparksnet ([2601:153:900:7730::20])
 by smtp.gmail.com with ESMTPSA id p127sm12216818qkc.37.2020.11.16.07.19.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:19:23 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 4/4] arm64: dts: rockchip: enable usb3 on rk3328-roc-cc board
Date: Mon, 16 Nov 2020 15:17:36 +0000
Message-Id: <20201116151735.178737-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116151735.178737-1-pgwipeout@gmail.com>
References: <20201116151735.178737-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_151926_565663_1ACFAF07 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: frank.wang@rock-chips.com, zyw@rock-chips.com, linux-usb@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, william.wu@rock-chips.com,
 wulf@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable the usb3 controller and usb3 phy nodes on the rk3328-roc-cc board file.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index b70ffb1c6a63..b060323830af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -345,6 +345,27 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &vop {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
