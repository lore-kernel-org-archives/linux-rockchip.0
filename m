Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DD47CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjBN5fEJRHt0F7NnOOjU87ga2tRbSOqgy69//9cyw9g=; b=KQMwjYuH0NHwfP
	iWJz01zbFflaPcBD+3Ppdp/5MUm5zNBXMELto4JaxaIuMF4YigP6FVXJnT3VQUdtlWjULZKx9+uFr
	Swr0OdCLhFCuvh0TI1nTjIkID4SB8sIPmvON7PIuvyrn9EaOtbHDjkJtcHDRZrw7SCjk6lTys2AYb
	Eax2IleRtHxfjlpZBpoYYM4qMzAyEkvnpKV+VRyddMGBlPAKobt8fAvN0Y6VRqizzDnCcqAXV2ZXM
	sb2ePuSO45XT3wxHHPpTfjiiD9y0OcmJr62AP0cis4OnZVPoZ3QcMDjUyWBr547dW5OYoW6vcSxz3
	shalA/12/eO3qgmaYQDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7de-000000016LZ-1rzR;
	Tue, 06 Oct 2026 16:03:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7dD-0000000169I-2gXi
	for linux-rockchip@bombadil.infradead.org;
	Tue, 06 Oct 2026 16:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=0zNl6UGGxbhfecF/18HhuaAiuKj/2y2M+Jhf4QeVujQ=; b=j2vrzcnaBRaE8aws4T69GJhmtx
	blXEsW7hnrOc5VTNkcmDfdQrD1ZnUBwtx2rLtZ3cJwk1cbeOGBFpsjRHMnHpWTs+RLUjmxNsDx3/v
	Hqgx8ngChaS7NS6V8uDdMi/8P/3ixAtWsN7mXcAnIcND+ausZucKnHjiu/9WbPeH3/ZHNsv1u/JAw
	FYiaqNZUUstSBXXVdmD/jsfsDabKa2E/GgyMkMT06BSappPxvX3Qx7gez04ZFQ8uvbo6l5CExg4h3
	Rp79LByd19QTtY4JwPBurd+m+tcEXwQDTgCN83J81AcaX9WLOvNNMva0YgTkRkeCSzjb7GA+Z/q4q
	ABOOdAHA==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xE7d9-00000008qXD-3z1A
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:03:06 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48870973bddso584487f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1791302583; x=1791907383; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0zNl6UGGxbhfecF/18HhuaAiuKj/2y2M+Jhf4QeVujQ=;
        b=yuAfALhg+amDVcLAe3mizYgfq2HMtWUJqpbyJKcWg3KHpoC9IfZPLCIlm2UhmWElYI
         P3zHo1fiIE299wAIxsXyAjzCZ2l/B02BIFYU4bBtpOn7Jpr15Z/wXIxqQdv6Q+CCnM+Y
         2ePa/PCvp+YdlJx5yCJ41g0X37ZxRnVz0Cy0m+rF2tjsFcek9oZ2GrnxOlLdb+x2cvvz
         Ord4lXgc8BKCFYixZ8RmV0hJziX73Kk8qjhqrmSxYzLYJbnZWytxRQ5lJ0gt8/gRQ5o3
         fLFTn2QhESky9r7C2J2ChTCejc8X3J4oOhX5+be8DZQWH0BpEXEXzmhSVbRIik9oSLYy
         MSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791302583; x=1791907383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0zNl6UGGxbhfecF/18HhuaAiuKj/2y2M+Jhf4QeVujQ=;
        b=vF8Z6CFNE3A3zkUFZ11gbdDRtbuLn9e9KuU4rss298dbt+RZGrZ9fHDLTu4Ek7VTX4
         baEHKyaJLpv9F7/ScFVL3Gqt4TuCEiK0I3BJXPpDCArG5vrIIPbtZh28aBurJmDxR/iP
         qhKgXW3FMedfuBMDunyYZgxk/LMczEfqD/8PynOE+tETa3L69TzjPftAEn0WvyKjEenL
         xh9GiH/MoYzHcerlZjEKQGiDt1g9d2CRZCkV2QJeK85Y93OqLMTjWGzLqBnSiSLlXzOp
         UVuqb6xg3Y17HldYhW2AaAmHsLzsxncGOH9SUziDFPwZp7KL02RRuCkNJeoqyjzt7ygJ
         du+g==
X-Forwarded-Encrypted: i=1; AKwUvBy5omwoVUMlumfxmlgiz7yxVBiTu3o0btzqCcAxc4P9P6lIjwXnGnxp9eDz+Fm0MGs/zA8RtegUZUlsu1RI8w==@lists.infradead.org
X-Gm-Message-State: AFq9FYKJX78uWEROqZgHa+MrByNOSf2ZHpkQUNpkbUv7l/EAMT9MG0wB
	PmuEVwdStUTcJCjnjOjXQRrQGYq3sTQnTKxZsQvIJ0qdnNWkLpffMDEysk12M079QyY=
X-Gm-Gg: AYBFou1yLFQ+FzYm2TCGvtSXTRH3i6ElV3tX2CBMRFkfiUn25KYouWnzs3Px1QDtuVF
	K6heqS9jrobGgxn441hQDzd6mskSizUUrU4/xL9ZRd9O7qOA/XnbIHGVtL2yUjTRM9QZTzxZ+So
	nvV84/rDz647qmw2Zzo8Qx/9fwpcfUkkEfIZMTLfE1Ty4evaVWDotZFBVJR8he4umcFwES0j10r
	yhWKVUbAXocLH0CPLKiTyBbnhHR7ElzCCAkNYkovC6YSJfaI3+GY73D22UC+LQQwzON95sy2yDD
	FelPq2bVAu6mvuBjbvaGnFynod3TADk0TsLBZaqUASrHDwuBeduEvLDFdm4VbTGbmUSCLET9AHA
	rIKo53gg1MDbcbtkO33AgG0avo6jEKByZzNKO02/akqq+CZrQge2mIHwX+nI3f0m5EQPaLzuKVK
	3YZ//NwNj3F72i051/nLWkdQZxCv+wCN+ZWSWi0hfZdzW0nryVVK6oDLagO0yLujIgwOupvlIQp
	wAPcdkSAJzcFoq4uA==
X-Received: by 2002:a5d:5f88:0:b0:48c:4a62:9b31 with SMTP id ffacd0b85a97d-48c6d164fa6mr4430220f8f.5.1791302582565;
        Tue, 06 Oct 2026 09:03:02 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.85.242.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d2014asm369641f8f.38.2026.10.06.09.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:03:02 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 06 Oct 2026 20:02:43 +0400
Subject: [PATCH v3 5/5] arm64: dts: rockchip: name the reboot mode supplies
 on RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20261006-b4-rk3576-reboot-mode-v3-5-6edba064693b@flipper.net>
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
In-Reply-To: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, 
 Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1763; i=alchark@flipper.net;
 h=from:subject:message-id; bh=DtVVqhzPhKpRS7Y/KUFbFu029wxRWP23ekIgrNJm73c=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQdlV5zMMsjyuKV/rLErP3XNq7l+/lozp9X/l5VzY/9X
 wZNmL5PqGMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTSMdYxYuDiFICp/nya4a/sRJNX3Bof5p+oOy9yeUfrnttnuN0V1R3vZ+1LO6Wg88KdkaFdSUL
 OXnvJHnWLuJyWIqa1T0p6FDJPTRBaLpeRIPWihR8A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_170304_158259_0B0756CE 
X-CRM114-Status: GOOD (  13.94  )
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

A reset that carries a boot mode request has to leave the mode register
intact, so it also leaves the regulators as the running system left
them. The DDR firmware that runs next configures bus QoS in the
interconnect, in CCI_GRF, DDR_GRF and NPU_GRF, and faults if a supply
behind any of those is down. The NPU rail is the one most easily left
unpowered, as nothing else on the board needs it.

Name every supply those blocks sit behind, so that requesting a boot
mode powers them regardless of what the running system happened to keep
enabled.

Tested-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index f83d129f96f1..d8191ce8bd42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -957,6 +957,22 @@ wifi_wake_host: wifi-wake-host {
 	};
 };
 
+&reboot_mode {
+	/*
+	 * A reset that carries a boot mode request leaves the regulators as
+	 * the running system left them, while the DDR firmware that runs next
+	 * configures bus QoS in the interconnect, CCI_GRF, DDR_GRF and
+	 * NPU_GRF, and it runs into a synchronous abort if any of the blocks
+	 * is unpowered when it accesses them.
+	 */
+	ddr-supply = <&vdd_ddr_s0>;
+	ddr2-supply = <&vdd2_ddr_s3>;
+	ddr-pll-supply = <&vdda_ddr_pll_s0>;
+	ddrq-supply = <&vddq_ddr_s0>;
+	logic-supply = <&vdd_logic_s0>;
+	npu-supply = <&vdd_npu_s0>;
+};
+
 &sai1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sai1m0_lrck

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
