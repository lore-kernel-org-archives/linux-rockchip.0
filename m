Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62883CA5FA3
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 17:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEDjZALc83Ea6HP02sFTeOMOJ6XN1QFH2MvBcToCu9E=; b=z46lQCjVVuACxh
	c946llOlGPMEtw97+IUYuguYTVZHyI6l5XchM6A0pMH3UDeBLmwSnng9NuPgtneJb6TcfVhw64K1i
	H9lLXf1eYd/R2EjZSdV6Wi01pEPLJsM5gtLySQtMLrLxS0eDthITM3CMibodorDQH6jBLks8qIdQS
	sDsHe3Zwln9NmI8JjbnlyASwSwJgZmTKrqCIRB1gfOqGnH4SQM6szQpBvrprhPofqqy7sC5ViZVqq
	tgizYySc5OVjZNseRDXLNj8JT5cPoSyjbDd5ceiwmoAvoBf+RkHCQeEE2OSHCKvB+EPLW3ZBOeD1c
	2zLqjBaLyZ5a3dd+odBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBF0N-0000000186R-00Vy;
	Mon, 28 Sep 2026 17:19:07 +0000
Received: from mail-wr2-x0f.google.com ([2a00:1450:4864:30::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBEzu-000000017kw-3t8a
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 17:18:40 +0000
Received: by mail-wr2-x0f.google.com with SMTP id ffacd0b85a97d-488780459e2so3221272f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 10:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790615917; x=1791220717; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OKoAFSTyhxJJ9frySV0GsBnYnyW00C156g62nhJmL7I=;
        b=r+aXL8/LYcgD7osVTvxO5vNSvaodC4Lgfrp8jbC4U2LcNPrl8k1c1puJv5bakCWYoV
         EhVXqTHbH8z0maM5LELSis5ibrsEnCz+mWQ51Fz5NBNkyPbx6vLlJuUbIdBDBbT4wxwP
         0CKah7KcXZ+XFYdYaNZwJdxS28J2SQrhr8xJchofx0Y75S6fE3utCLmnaox4JeC8JSFc
         VNY5vh5GB5tXt348cvz39l7uPzV2RlxPlvLBHjXa1VmPY/X9PkUau2gQg4u2rAX+Jh4X
         n5JirKuOJ385kVZHvTBiFFu9CLH5MrfItFB4NKPWwW/Zo4tgq9oxCvBRZ6qoEsQh7nbX
         h05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790615917; x=1791220717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OKoAFSTyhxJJ9frySV0GsBnYnyW00C156g62nhJmL7I=;
        b=fRUJ69gj9PQ33bBwrT6TxdnBsfHajZ+g/ymKe4d4OITYq37gcYpZchk5JUDpuDfoj/
         NLa/5QC07q2oIL095qYbJVUcyTQ5Jt5nw9EeFaz/syDlK4nT/UupE5ru8Is/aHJrtTNS
         9kaAbZ9ZXpIuurIspHXR/WPdwdUuGySYVsPnHaEKsF5//+BtLc80g8NHei8JTQHwXBbK
         U/6ZRc2++m+NxhxC/AfZZ/zhVXyDEWs52bkEE/h9+mIfqQ46pTZ5vhPtLcK1wMzftpMl
         Penc7AGlt/cEp7RvhZ+nZs/Eg+yKiSvHFA5TLsj6vtUO5wtNIkLpmHcdP8XVaFFeTlxx
         kUcw==
X-Forwarded-Encrypted: i=1; AKwUvBy/XF8ggiCE+5oOlJwAGomDeiUpj1wL6pkoK06kcqBiIQ3OgWoi+r1BVqU4lRYaZa/LtPWWQ8ml+fUOqGkyzQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIfj+8qyRQiLzh6ggqeA9nQt8cEOVCgfc4Bc5IvFshySNvSCrLd
	G463pIOokv6H5ej0CJsb2jSo7r6QrdIAnRdlwvYSeZaH7TxuMbAP60HMGoDxQPFxK9c=
X-Gm-Gg: AYBFou1/9IhN1y24PLeahHrRC0gCL+mRhMkLjEkdYzT7SJdcq8MTq9ExPx4Ihn+WD9B
	lQvRpq6qvU44s9FaopAAaTBhTTgKv0tdxbgt8TSRRuFevmWg84EEliPgW6l6jFppfLiS7wpK+A3
	WOLuPrhqX5Syu/VGZTbtGcghiQ52BQQGPGKaKzDTvbeo27jTyBCf9dZZqNYUQr+4cu/NFHgMZBA
	JAiPrgLDHAHtjTxTVoCzi1pCsXf9v+zYX6frATFFm5hBH3Sw84hyLylT4vWgTOSgH16Z/sAMZLC
	/QB17+3uqyOtl0HrrJF8vt1QhKXRClqMmKvD3NPuMSvzh15Kle79oxsBY7eMSYOs7nrl/Ji8uuD
	fQUl1t5vu24nOWmKLci1cOISJZx1GbfP6w9oAQxPpXdXSsh0YTsRGATfhtNVYd4EjtnR6898if5
	A4yxUFh+ZftdzTs59s2A78gddkOi7L2lhem6uOQaLTqI0N16Iwi0kEovcHbz+d3RrJ0tCn5OVEj
	5AJ/VrIkfr4gI7l
X-Received: by 2002:a05:6000:2211:b0:487:a3f:1ea6 with SMTP id ffacd0b85a97d-4887171417cmr25452794f8f.11.1790615917277;
        Mon, 28 Sep 2026 10:18:37 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a84221bsm29224973f8f.36.2026.09.28.10.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 10:18:37 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 28 Sep 2026 21:18:20 +0400
Subject: [PATCH 5/5] arm64: dts: rockchip: name the reboot mode supplies on
 RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20260928-b4-rk3576-reboot-mode-v1-5-65486b03bd41@flipper.net>
References: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
In-Reply-To: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1714; i=alchark@flipper.net;
 h=from:subject:message-id; bh=GSDTTVtVozpx3VJNNfeRSYeJA9UCPSmKB3J4qrce5Vk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtWhhfLzE1objgdFrER4kj67Xv6uS5Fq0Sv/X5CXc90
 9eGpgnrOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjqb6cZGRauctbcWyvRt/REtjnT1WhdyZehG1dG3G4LuafFJPFC2Z/hn7JD+Ey
 HiZqxx79dfRSpsVRALGraiop3H688uBfhO/lPBisA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_101839_002716_5F207EB1 
X-CRM114-Status: GOOD (  12.73  )
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

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 4c82980a9f63..55951f290906 100644
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
