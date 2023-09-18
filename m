Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C88CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 17:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qds5HxpzUivJyb2eIe4yYSRJ282zE1qQmEz5g8YUUU4=; b=4bpyxvDlPB2Hi3
	j0tJ19+5wDfCsOjB8EqsagblZ2NaIiGDw4juCLV8HlXZQ4eHeftkH2aVw9stnnNWFPzlKh+nQyskl
	ImBe/0lf1RIBY2eoRpq7xNmqyjU7kTc36DfkGaItgcxjtQFCVxU+1bpLMSD836rz1CIBulB3c3+Bn
	hAR3i0gcg71cPFErf+NijwPomc+mul+eLW+Jb9rFG5kStKw7WWIEe7DSBukTQ/2pmBUC9Wp9tNE7L
	ZB6F9drrp9T2S//YO96hx5hAAq0Mu2lBJXjpp0iJUOCKlQDzVLbtQlYNly3S26J0GHk6eXDZx8KVY
	Q6ZsA07wl8C+imZ07YaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7S-00Fzjy-0t;
	Mon, 18 Sep 2023 17:33:10 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7N-00FziF-29
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 17:33:07 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6c09d760cb9so3013055a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058384; x=1695663184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=X5OPZjISvGybH3cBsSh5fuxEuATWKrXwX3UIHz/2rgwcgUV6tlqx/+pbzWw8y/7Gyp
         0sVBvbdixDQw/jSh4xyxl2yLbZ+WohnPchksTmVMiZsK6XoezRNOl4y524T7gAjrmJIt
         SHiG2OeQ4FxBJq4sE5kC4d+hAjrqnybFVBHixY92UvfR3mqjnr20oFIVK3rXoj5ilf0k
         /ePxTSj8t6pUcvUsr2TPaUOvjxU7l0kHTnsyVMCcJhWcHnZcI1HAYH95aDcLQtV6nLC+
         9HT9rZWpTa5F1gxPS0gn+iGBoika1kf2PY0D84bakF6cD1lITOXJtGp8hJaRf7vOqs0E
         Jheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058384; x=1695663184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=wnevxSjaBimI6Vpsn/HXYQtfhZHkZlCSCV5hHjA08Tr6bkSGuSg0QsLX2p5bZQ0f9D
         BSmXi8gpjPZqw/GFP/itnYwLp0yUOjVIPr+aZVkK6vMSTg0uw4bAmJqzQrPsUmXcBkjL
         FfFU6CIVExgSf2R78LBcmokbQQxCxNkxHWMG9z4Tdgs999z6whOeRAlvnmsyLmwxfoo0
         0/Hu4emVEdiB2V3jabtHgJanYFSKQR5MDmzpxjTm+sETcUX06a6zjnmKe5MjIjl50vf9
         VEc0PGChSvZfrw1JgVK5+XqDC1n5ui0Ov7nBLoJV2tapUraVIlnBgUGmXMtCWSD0KP1q
         5uww==
X-Gm-Message-State: AOJu0YxWdjWJFdddF3aDKOjtv9IkDnQkq/4O1SwSYcP/Znu83DSdyMJv
	EjkDFnU6T5vyIiEVCoX4ibA=
X-Google-Smtp-Source: AGHT+IFhyJPfr37KhtqJ3wZPBJSB4Q0J4LL+BiQBQ2krz+QLEZPpXFJVQeJuBoTMWVVYL6p0kMeSxA==
X-Received: by 2002:a9d:7dcb:0:b0:6bf:ef0:c69 with SMTP id k11-20020a9d7dcb000000b006bf0ef00c69mr9537847otn.34.1695058383965;
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
Date: Mon, 18 Sep 2023 12:32:54 -0500
Message-Id: <20230918173255.1325-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_103305_704805_C1C58A12 
X-CRM114-Status: GOOD (  11.14  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Enable USB2 (EHCI and OCHI mode) support for the Indiedroid Nova. This
adds support for USB for the 4 full size USB-A ports. Note that USB 3
(the two blue full-size USB-A ports) is still outstanding, as is
support for USB on the USB-C ports. The controller is not yet supported
for these ports.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 646f49cc9e53..1e2336d3065b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -751,6 +751,24 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
@@ -775,3 +793,19 @@ bluetooth {
 		pinctrl-names = "default";
 	};
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
