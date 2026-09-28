Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FEE5CA5FA3
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 17:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsCPYuxl+vBjxpfToBVXC4po5oMnW/A6Ism1q09KhGY=; b=dsnUemyWnHwww2
	UqaM8hGtCTfC0xphLXA8BaJ6Gxv0BGI4F22wGJkLGxWG3gVhORKjbs7uIbHKGCWl3Iu8jYhp0YukN
	my/VoHLHgKwfJn7OQwvfGFjdEK/iJXn84AKeBs3eR87wLzSv57RAd+H/VBq61zOmokW38bZbVTK6S
	OTHKnFxWEr+s6ioKGaO6F+k4f79/c2niY7vIYUTF+oqaeG6V6gTHq48NI5j/ZxEh/DIHwhF3ceoNb
	nv+7ZpR4R7nYiP0AXtthlIuvkEsN7ReA/nFpiUCsgD0gepCtcH6MyE8zoOtV6oOuxbinPKlHDHtLj
	TxCTIsDGcV2HdkJkFIfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBEzp-000000017h5-3W2U;
	Mon, 28 Sep 2026 17:18:33 +0000
Received: from mail-wr2-x0f.google.com ([2a00:1450:4864:30::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBEzl-000000017eO-44jT
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 17:18:31 +0000
Received: by mail-wr2-x0f.google.com with SMTP id ffacd0b85a97d-4887f6cf16bso2047983f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 10:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790615908; x=1791220708; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zIRsrxbOMOkK9iDXr4aj3ra7y2Ob9j8yNJXopYjS6eU=;
        b=7j9Oz+gNSiNz3sPWG8G/U3WtAPIp2F18F40sZYbiGWyWPq2MEbU5C8JNxH+pLUVcy4
         9d5zdhhNS6emAkBKCzCIZUHk4V5+lNQ4aOhYi4uH9SqfawoeaheiZmSIcRz3W+oMRhKA
         GNgFzVGaZW6G5Y9gudklvXkS/ZlGufNBssuWrvi3iNd2urMzSOarrCFhaUhmYQJUVL5n
         KD/mUxibop1Sl1nTS43aYxi3beAFKs7F1hywll5KAR6uCUG1WVbK2UmBCMyWhi2pCIy+
         AM3x8r/Z0RrQAOzy4MtzVvMFx2zNVvVihoV8KIpFNeiLLophBdCOW9wAeBM2kvXOrb1j
         rTZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790615908; x=1791220708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zIRsrxbOMOkK9iDXr4aj3ra7y2Ob9j8yNJXopYjS6eU=;
        b=lt8PbAlXpQAY6vKWMlumoLYXStiiosYvN9jtLD3QcXb8b/B6W0+i5xigBFyK8jh1In
         2sCN4VEl8bn6a+/wWj28V3aCg0+uWJDed0An2nor5YggNM1MPO4+ody57foHxUjnvBPL
         ElfO5Lwelbn/WalqP0DV/hclG5O1GyE+dcnYck45vAHxn90AfZDX3RiMn92dgHEEQC/M
         PqehYseB6P0Wert+f//9S4jkoKzR50qrogDAISw7eJSmfsqGYH4+XKj88/F6oTu0d8hh
         sEHCo0Hrrv3AX3B1GKdgbHILsC6rtGpdFC8YI1jdLtnfZKkSMFDTVi9E/w7q3Cd5wMEi
         O9Gg==
X-Forwarded-Encrypted: i=1; AKwUvBxTWko0pX7B3RPhvAbd44km6Uyk2E2PDwrPMhCexEdqKYjUmxSM+zYXa1e8FimcrkQgni3naQfPKdIo/aE06g==@lists.infradead.org
X-Gm-Message-State: AFq9FYJxRrfSV/vdahNs6hC0URyE5FUcV0igRUBmIX83e7CusDW/2hPC
	oyQTFKR63fqHU4yQQnm95X3wB5PbGxudrFb7fOfnk45AOEJifdJnsn3bNHsPasdtgxFyHZeFh+o
	tObuI
X-Gm-Gg: AYBFou1UXbW8saHELNmB4Etc4IBnBMVKfUHYtxSHU/Jehlvf0TYS0qGT+/mImrd1d42
	azP5KmYACfm643Dxh75xFxxKd283iUGWCb7avzatiLaNIsM9P5LKvr/ph6+5+CyharEDrf3AGTM
	GBy9V/+HLBSYXtNTIpNuJZkFo/lsvbcWJEEv2K36OiMnfzR51D5rDeeDUyAHXBGast3+kkr8Gwr
	FXtdN7CFSS34NTWJYITBtvUKiLPcft1v5TKjcSKNrmNHHtY8MaKCnI285GsqHdjmuD24HhmHXez
	APT1PCthwIGDFSPF+Kdo4ArYCaGt+YgxUD0wkUf4dm0mNWDatCS/QSnIN/44FD8w1c6nY0/tgf3
	P24qxI6c/EGKeYcAb+4V2kGLFaZ37ZaS4WeWzStYX7bt6vYLs2scCtcxxBzov2vRlLNj2ZA67/i
	omJUdBhfFKMvrBCh3G7i3bPONSOLqrhOp+f6sFT76mi90EhoCNyxlfyGKI7cqlj9Oub6/U0L49w
	V7cGMJOmdTYOVfY
X-Received: by 2002:a05:6000:26d1:b0:487:8ec:1fc with SMTP id ffacd0b85a97d-4887d9fa635mr17537803f8f.12.1790615907966;
        Mon, 28 Sep 2026 10:18:27 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a84221bsm29224973f8f.36.2026.09.28.10.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 10:18:27 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 28 Sep 2026 21:18:16 +0400
Subject: [PATCH 1/5] dt-bindings: soc: rockchip: add boot ROM download boot
 mode
MIME-Version: 1.0
Message-Id: <20260928-b4-rk3576-reboot-mode-v1-1-65486b03bd41@flipper.net>
References: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
In-Reply-To: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=915; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Ft5tajPF6rdyfGUW0BWFsN32iOQqo1FkzC57Z7wFY/o=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtWhinbsfiONvyQIzZot5TwS3higezco2yr3Y+ue/Im
 qdTHiTRMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GukY6xgxcHEKwFQvPszIMPeP8YnEGdl7fWbffyh22kmaO+DChdIL7v/lLwuETZ7gJcjIsEP5a52
 61MqViz6WrbnX73rg+jPHWLOd3r+SdU5Y/X5wmR8A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_101830_034593_386DABCD 
X-CRM114-Status: GOOD (  10.03  )
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

Rockchip boot ROMs enter USB download mode, commonly known as maskrom,
when they find 0xef08a53c in the register they take the boot mode from.
Add the magic under the name U-Boot already uses for it, so that boards
able to request it can do so symbolically.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 include/dt-bindings/soc/rockchip,boot-mode.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/soc/rockchip,boot-mode.h b/include/dt-bindings/soc/rockchip,boot-mode.h
index 4b0914c0989d..88684f4184df 100644
--- a/include/dt-bindings/soc/rockchip,boot-mode.h
+++ b/include/dt-bindings/soc/rockchip,boot-mode.h
@@ -12,5 +12,7 @@
 #define BOOT_RECOVERY		(REBOOT_FLAG + 3)
  /* enter fastboot mode */
 #define BOOT_FASTBOOT		(REBOOT_FLAG + 9)
+/* enter boot ROM usb download (maskrom) mode */
+#define BOOT_BROM_DOWNLOAD	0xEF08A53C
 
 #endif

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
