Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B6C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:41:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C82A6140C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:41:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C82A6140C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PxZDN6Hjwlhckf9hH4a2vHjrG0vht+E5Gt/WowHCT4w=; b=i12WP4XTLm+uo8
	2sfygszM/MYre7litq44lwYUJt5I6JgulAL7FZ3KOPDm6RUnm4CfibDiz6BhVLut5vJlqpqP8v2bS
	zcYtCA+hG1V8Ogg+ego4IKmq7Jsbv121t1BTiH5gH3vsaSI/wT9No97n/Ei+Qrr9wtqc+qcL9bL/c
	4z4gZ7Y4D3VoT5WwU31TNrvkSs2UcBvzIxU+vLg68jqXYFSZzaWFH2obc63aeBwNYzs1iwOjOFnlu
	gxKONudQ4+f3ot2O9svZGyHuHhK7xH9UkeNdMAaR/w9ys4pE5B5Q/wYm//GY2ElHFOGcVXITC8wvK
	mE+qq1hwi4M8PvN7bO7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyxsZ-0005Rc-HL; Thu, 01 Jul 2021 14:41:23 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyxsW-0005QX-C9; Thu, 01 Jul 2021 14:41:21 +0000
Received: by mail-ed1-x52c.google.com with SMTP id w17so8761155edd.10;
 Thu, 01 Jul 2021 07:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=T3GLhCsap0BUzc6paVqHLBwR4VLRpdgqVCUNWRfuD2U=;
 b=ogi7mio7y2TSxI/Hg2XCaWp7SVTtS6XIGftJzFKTtXA6yvkN2HYgt6PDAbDtukReuj
 84WwNepjogw5hQSIyC1hKVx9kdYsAtHkKNOuK/Qh/l9mHlv+4jOBGiNAsUkv5X8sOTBN
 bp5x68CCGIkCyjW8GR+VG807pKg4rZaD9wvqc/IElICU/2TRasOERpL+I7ckONLWZ9PQ
 nCD3E+WO3N2+J4GQUy027m/E+k+5PgMjcR21Bki/ykQ2NShtCeQEt+4aI0w4/6GCMBOg
 iOcptA9EszbCjzdFiI862YW+pB817agUuc404JyVPVui7Sv+QD9JrFYLNojRUOAV/QwJ
 G3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=T3GLhCsap0BUzc6paVqHLBwR4VLRpdgqVCUNWRfuD2U=;
 b=LVUQjsqCijf+RqM3RlfWtwyExw9k2xVO/Xmy6VIT/SWwkBwPKQNkl5VMIWN6964BFv
 pU6ZMVNXxvgfLKadj5CMUU85ijNIfW1MDrqMwzd5KmbxXiTZ8yq3jKCIhqarYii16Ssb
 S8XwkmFjKS9GjfDRUL/7PEJJ/xedajOH9Btz/wAULU8nlgnWL/urjYhmXMvpw4aKdnHD
 OIQi+9EXFSgTNovbfcuJ7lvT+we2AglAP3sluGdDxeqp0oRqY/xFq2b9+t2LkQUxY8zL
 /MH5qvyQvdb0TTOMDVnfWInKNYSYB5FDIcHBAjSD9fXZKl8LAUOHHfI15t2N3ADaZzIF
 +Ycw==
X-Gm-Message-State: AOAM531NUVZWpe09QJ4n8iRzW1OPgFx3e7zpXStTDQw8HbOkW2kIwhpO
 99HW/ZfvFGHTLdCuHoooLro=
X-Google-Smtp-Source: ABdhPJw66fAiNBJHazuNQgB9F0NZpfrVEg++UK5mV8IPGX+OCm40VYiiM0EvzzHHCNExdHu5Qm7ulg==
X-Received: by 2002:a05:6402:42d2:: with SMTP id
 i18mr247472edc.168.1625150478611; 
 Thu, 01 Jul 2021 07:41:18 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a8sm2239ejx.99.2021.07.01.07.41.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Jul 2021 07:41:17 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: remove clock_in_out from gmac2phy
 node in rk3318-a95x-z2.dts
Date: Thu,  1 Jul 2021 16:41:09 +0200
Message-Id: <20210701144110.12333-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_074120_450590_1B5AEE4F 
X-CRM114-Status: GOOD (  11.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recently a clock_in_out property was added to the gmac2phy node
in rk3328.dtsi, so now the clock_in_out in rk3318-a95x-z2.dts
can be removed.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 763cf9b46..d41f786b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -185,7 +185,6 @@
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
 	assigned-clock-rate = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
-	clock_in_out = "output";
 	status = "okay";
 };
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
