Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A271BC433DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 19:13:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2058020829
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 19:13:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="h2ACjXXb";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="EmKIBuKB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2058020829
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=airmail.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=da/cOoQl/ba6dJ5MWJqK1G8MyOLH37ewLhMWhNSCsak=; b=h2ACjXXbNj9EoFmQC2q1Bz4D6s
	TxJAKZC8oNLi+jFeTEFl+Bj7b4OpRNb5fkSoOBfT5Uf06FlsXzckjUYyOgRVMY+rb8TJ8/2FdaNCe
	TbLzyn95+Z/w2D2xavCUVs6gP8Md/L8lxEFjMEYs1cSyM7ULG3/yaUrZ68JetRfQXlPXR4tlnmJVh
	/wNTRHd2mnLNyFGaTL9PoYiVNsIHz6uiUgSg4ikQZZKiRGIOU3pcJw2BMivv7k3qP1guHHnbhsQl5
	3cA9V6a3ma2Gj00JNBzWaGmLoaFUnVS5GGJEatbTf/p6EWp+GZhgENmSY3xcA+4nDe0p9YAkVJYXl
	bHga/Rcg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7O5M-0000LN-NS; Sun, 16 Aug 2020 19:12:52 +0000
Received: from mail.cock.li ([37.120.193.124])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7O5I-0000Ko-Cl; Sun, 16 Aug 2020 19:12:49 +0000
From: travelvia@airmail.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1597605162; bh=nkOoATIOzhekM29d+3SGSeUqRRsxTkbzb2ySMycM9oA=;
 h=From:To:Cc:Subject:Date:From;
 b=EmKIBuKBFxRKXe79wjNHLOy/DRBnbAuCG4d91eS78th4/39aX6QmZFTH9uwpNdaBq
 xAkT9DLhfw6HhInHxBs7cNTnloc7/HDGxsZRJJj84M9Vp0sxVmmYhSQTkTn1jwvPYu
 hHcFWrPTxwwQOIv8iKoCmycy2esdbDyoWy/znFKpCgjKabn1UfGt8YLZHRLG2was2s
 kX6McNjzCYpo/V9cgsEDxckCeEF/s59CHCK8z1RpWcN5uLOj8mVmbk+GTYeHpK2QDw
 UoHnNdjH8Y3GMDdK54I2+NaCBXC7yvZOOhhrsOBRIE3ZtR1uw363MgETpPudGRkPS2
 HB7VhW29wu0JA==
To: robh+dt@kernel.org, heiko@sntech.de, balbi@kernel.org,
 gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 1/3] usb: dwc3: of-simple: Add compatible for rk3328
Date: Sun, 16 Aug 2020 12:12:22 -0700
Message-Id: <20200816191224.31420-1-travelvia@airmail.cc>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_151248_744461_20407377 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: Cameron Nemo <cnemo@tutanota.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future, and old device trees must
remain commpatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 7df115012935..54f38e434028 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -49,7 +49,8 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	 * Some controllers need to toggle the usb3-otg reset before trying to
 	 * initialize the PHY, otherwise the PHY times out.
 	 */
-	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
+	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3") ||
+	    of_device_is_compatible(np, "rockchip,rk3328-dwc3"))
 		simple->need_reset = true;
 
 	simple->resets = of_reset_control_array_get(np, false, true,
@@ -171,6 +172,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
