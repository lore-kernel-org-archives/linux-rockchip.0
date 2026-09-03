Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D207CC624D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Au4dSv9CyqXVSfFTlbxwD10Mic4mlCuEXaa2cu1ynxA=; b=vTPmb3fxuOve+o
	Nom4EfhUOJY1vQGrDpukoWB+dWAUBx2YR0DEN/I4uiin8e+kDmbT1YiQtP8nA52FRXsQ/qRP1CDJm
	la9rex0j7DlJZiqN0x8Nckrp6X+zAhEcvs0/HelBe592t3f0I0jatEIdGc6vfYGdZvXFkSxsd16Fa
	LWSiwXMEpS8IsO7NBgWVea9vjSBbLdvbFr9OK/yLTD75qxKs/A3mbTojQr2UpsnXWsR7WgBRWNsOs
	mrhkBdbhyJk2OJzWQQm6/J1Od7zBKfDyEaDfEWa+oCW4AC0vUAwutR7icHI2ZTYLpBtUuqY6HQWpl
	PfltqEcIJzmbwyq80YXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22nE-0000000GmwD-0Zm0;
	Thu, 03 Sep 2026 08:27:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22nD-0000000Gmvk-1gd3
	for linux-rockchip@bombadil.infradead.org;
	Thu, 03 Sep 2026 08:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ygqN/5aySUJAjDby6ggcqL/WOD8GS0n0R4kFPbVzOoI=; b=mNpQxo/TU5O0TEMDAYod4F0D85
	vfEKaE+PnKMHe07S/aRDnFHV7G/7q4ByOEYTMsb1QvW1wZTXUCy7x+M6aAEL5kZAYbHba3EjBe+io
	34FwS+8yfVIKk/igZ2d5RkrvvRZ3zfp0Qhg7GqKADwWSQe5/VEAyQT5fVwMdTrrEXW5RIzabGueMM
	+fAdwjFsjKa0T2cLegyJ+IbsGaB6Bb7Yyred8tXYu3plKB8Gv+Vxc9AZ006qbtewjn4RqHhwgyPml
	DZrH3u+5WlOV+qETFe+MP1cxHRUSCUSxHhYyzcpcKXntDbABb+d+PdfsXovMWZVtYpKpMKeEpuSNN
	A9m4uZUA==;
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x22nA-0000000CrX1-2gOI
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:27:30 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-38dfe910e9dso2506593a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 01:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788424046; x=1789028846; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ygqN/5aySUJAjDby6ggcqL/WOD8GS0n0R4kFPbVzOoI=;
        b=hjzgpnEu6QfvAV/R7E/Lfc/CNNDM5A2zeX2KUfkFAuDWQ8kRGEdsqCeukYyEk5R05g
         vPSGnE+QKIzgJwwHXdFAD6Dj94Vx9KdnZxzwzS2W8NZnj5UtdL1FOrKXABKyqar0yJl5
         U7P+ZDmTJ800X0REyn+vQXhLRHb/O+B0i1+lPP7W1nCoLRyEbeILHVnCiTW+i/7tsOAo
         LabmzSk4xmueW6X7j41g+FUihSt42Ec3yP6RM/VDkoMHcoi4r2JzF4zKaVqG0OklG8Bu
         D47FF4BnAJkfTbXO9uujAlq4S3xUwDpCR0VNtQspe+s+pxiq2ZpFxJUY5gKdVH8Vp/uB
         dpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788424046; x=1789028846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ygqN/5aySUJAjDby6ggcqL/WOD8GS0n0R4kFPbVzOoI=;
        b=j7qRQ15AZ61WkPzvOaMIIjEYy7Z5KYU+/iWvbJho4AGTYwjOEOQKEmQJWz8Fet0kVQ
         vUwV97iW8VBbtgxlyFfnsrnAiDSuKsbpmLesGA6UNibOU7MRBPbDa9hmwAjUTNYcBByD
         oXRs9egWTPxvCuZdE5Pg2iJrGxAOXOmuowMsKJTlyuXU8MNhX/rEp3cCkvdu6zMkBW3y
         n8I3k6IQ4xh5EeDgRBU/XgaH36gPefPND8/A7xgfrMRIZSsRPtxykmKZE7PubZavE8LB
         PU+uWBcHFkZGzNSKEMbWF9KlfnYaI2hyVvX+umWrhlvNb6NdEoMxRiRvpqbUPKnRNtx3
         yhnA==
X-Gm-Message-State: AFuF++mw8tUmbUxH2BpuOChs17xknEt2aCvrujx0m4ZhJAiDoCdWmOPb
	JE4FX3hB44bLCGJwwtmh5qwhotPgzyiLPQptlspj7Tbfhdru9ONwdMK99oI4zl+F
X-Gm-Gg: AYBFou05aov7Ze9cCF1vO7Pu+v5EiEHbS9yil4uCIJBqIy23jNqO4JKPL25zYlcWn3y
	9so8UmIPD9KL1MtakKTV1zjmCvS7Tor4aqeX+cBXxaXaYuYdGBcvWJMFGjClus/Z+zs5TxM4YYO
	78R8NpPZ9yZwZ7ZYp1nj3BrFTJ6QH09ih30u2gjMIpCh6rsDA7ICqmIFyP39jWQBe3WTsX5tq9x
	bLH4FYiOzWJJ3Ra3EwQdy63Pc77hQCpB+qsRf0JiGho1gSWi3OsQ4j/cS85HlVFqLNMIi8yptNR
	7hpDFZciY241RzKxmDwNULr6qdMKRn21UAfvQnWbSdq5ztipRLcWaEZ7E/kjrXpmd+v/1I/vdDx
	heJWoqLgFfNcTPBFN7AvNeZyc+R2rMic99Ge5lvWHqOKBO6bJLDYurDHGpm9Qw/z8FfyNn8vCtS
	ihXvw//aBqLBw2Ze0SOf21frWw73SernAVATGkGd9jr13iDi0rUiwsbUGyJSzXEQUTmAAVuCX5k
	g==
X-Received: by 2002:a17:90b:3d81:b0:38d:fda6:4873 with SMTP id 98e67ed59e1d1-39aedff2b42mr15677641a91.10.1788424045724;
        Thu, 03 Sep 2026 01:27:25 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1431f86504fsm2135193c88.4.2026.09.03.01.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 01:27:25 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: drop unused i2s0 from rk3399-firefly
Date: Thu,  3 Sep 2026 16:27:12 +0800
Message-ID: <20260903082713.192-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_092728_839155_D806A8A1 
X-CRM114-Status: GOOD (  10.42  )
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

rk3399-firefly.dts enables i2s0, but no sound card on this board
references it: the on-board rt5640 codec is wired to i2s1 and the
S/PDIF transmitter has its own controller. i2s0 is left over and
serves no purpose here.

Leaving it enabled is not free. The pl330 instance that serves the
audio block only has six channels:

  dma-pl330 ff6d0000.dma-controller: DBUFF-32x8bytes Num_Chans-6 \
    Num_Peri-12 Num_Events-12

i2s0 claims two of them for its unused tx/rx pair, so only four are
left for i2s1 (2), i2s2 (2) and spdif (1). i2s2 loses out and cannot
get a channel for capture:

  rockchip-i2s ff8a0000.i2s: Missing dma channel for stream: 1
  rockchip-i2s ff8a0000.i2s: ASoC error (-22): at \
    snd_soc_pcm_component_new() on ff8a0000.i2s

which makes any card bound to i2s2 fail to probe. This is what
currently prevents HDMI audio from working on this board.

i2s0 is disabled in rk3399-base.dtsi, so simply drop the override.
With it gone, i2s1, i2s2 and spdif all get the channels they ask for.

Tested on a Firefly-RK3399 board.

Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..fa1b8b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -618,12 +618,6 @@ accelerometer@68 {
 	};
 };
 
-&i2s0 {
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
-	status = "okay";
-};
-
 &i2s1 {
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
