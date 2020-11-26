Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 332B2C6379D
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA78621D91
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 07:34:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="urpKQr/O";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXS34bF3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA78621D91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=anDtFzGz9m1yOVQcSbkwGwCvxr/TcHTZ0RBvPe6dOD0=; b=urpKQr/O6dP3TkIeXTGzSQqvmC
	DmnRtCz82jNDqzIahMgkhfB2+16TL0WixxRbGfPTKmYbnfeCGufmjFc+rRvnpbOKND7RPS6mxJJoR
	oPt6CWrPFMYr6r8d6qUk6Tz8FVdQV5TTT+GM6tCdLn3ScgQA44BH1OrL0sbPdo6eebWiRhryXw5YE
	V1HHYCTGtNp4H7epbuGsrcbs/107ISjTxvG3MbeZsnn/4NYFeJNw0QcD7U2jyyeLuUYvHOlpX/XHq
	6g2fTGtqtuGPcQfZ4eOmdT6CzVU8DHSWzjd1UWaCp9wNZKKC99XekaF8ifMztb40HUhyrUoeJLMfr
	QtDaV4tA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiBms-0002us-Dc; Thu, 26 Nov 2020 07:33:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiBml-0002sx-Ng; Thu, 26 Nov 2020 07:33:48 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 241EA21D81;
 Thu, 26 Nov 2020 07:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606376026;
 bh=AyBcETcUXHxQfpaJ1Qc1wfZW0HDdZWtar/7MThviV7k=;
 h=From:To:Cc:Subject:Date:From;
 b=BXS34bF3soW3uEkltzK98lPgXOPl1h80ch3LmkzhJ4p7AccviksHpaQb7ITQoeuOy
 NapmNuXxiUKjdq0SafsBpl/M6STWrm0SqiTxXrD0xgcMkVeWMejBTFEcV+8BpheuXj
 XOTxbxULc74AnZta05Rm5s50ckOLD7WOq8EeA+M0=
Received: by wens.tw (Postfix, from userid 1000)
 id C389E5F806; Thu, 26 Nov 2020 15:33:42 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/3] arm64: dts: rockchip: rk3328-roc-cc: Misc improvements
Date: Thu, 26 Nov 2020 15:33:33 +0800
Message-Id: <20201126073336.30794-1-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_023347_862840_07B5E46E 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here are some improvements for the ROC-RK3328-CC.

Patch 1 sets dr_mode to "host" for OTG. Since the board has a type A
host port wired to the OTG controller, setting this is appropriate.

Patch 2 enables HDMI audio.

Patch 3 enables analog audio.

I opted to use one simple-card for each audio interface since a) the
definitions are already in the .dtsi file and b) having one card per
interface with proper names makes them easier to identify.

The changes are quite trivial. Hope they can be merged for the next
release.


Regards
ChenYu

Chen-Yu Tsai (3):
  arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG
  arm64: dts: rockchip: rk3328-roc-cc: Enable HDMI audio
  arm64: dts: rockchip: rk3328-roc-cc: Enable analog audio

 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
