Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86D67C47082
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 08:36:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52F7C61186
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 08:36:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 52F7C61186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wy41LK6FnrA/V/FephXYQ/Tm6tzTK+7ZUvyJUgx/yJ0=; b=qaLG/IFjKOofbf
	a8V/8ovy6eDr17LoE/Zs13gGLO5lxlP0RBQFs4TYkZotMLaVVCYInkbMAmgay4l71PXl6DPtbTgey
	aMwvmK2kWtHN9hkdadXHhetZpXiKD1UjwnbCWbXKTGRydGYAxdi3AAMPGSB9sAyvVkkHw4zPSvNbg
	x4X2CUSLBPbxYl/BnCW7Ciinb5CpAno87bCwUhzOVUX1ehyQbDx+aFdGHkG+k3/0e9K2BRcHkHT6t
	y2IwhfU1lBwL7pm0SWEYWlhQTzZi+lkwHzgJazJLKDtIVEw/Y/vD/qt2bPQppDqRVTwl1op2cMPBK
	I2I/YEk+bD1CBWJVcP0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndP1-00BTqr-L5; Mon, 31 May 2021 08:36:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndON-00BTeu-Oe; Mon, 31 May 2021 08:35:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8AFD961186;
 Mon, 31 May 2021 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622450123;
 bh=IRK46P+onnXUcW3yqKhMmjGzMOTmOvOELF+sM6g16GI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ebzXpGuZK57+n+kaoTCkB6EiUMEY//OwlZL1u8m97Rd5WbdGEKbINQxn5AQzHYZpt
 vdqL1sSMKnHNHRQ6hbftgJ9k93g/19rnROMpXeq92LfwY+wL5ADKsJOyY2x9QcLf53
 iplqYdQ7Rvf+/YclQfR532hHh8tpgxHiXG1LqqL35n/29nfNXhEqjyi7aPcsnybSYr
 TBZ0O0s+XSDzgj1wcDd+7K1KBNzD+0HlAniwqp26tttu7nQrJWaDbtBf7ycUc/IiLG
 krqFa2T+RNZPn7ncnW0JuvutNI2unzq2j+boMa6ipTVi6+ZjYTiMBtVSrJTZTrgzfo
 Pb/JCd6bV/2SQ==
Date: Mon, 31 May 2021 14:05:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to
 YAML
Message-ID: <YLSfxzJDekpDVFHd@vkoul-mobl.Dlink>
References: <20210518165658.12764-1-jbx6244@gmail.com>
 <20210518165658.12764-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518165658.12764-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_013523_860696_722F04BC 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 18-05-21, 18:56, Johan Jonker wrote:
> Current dts files with Rockchip 'usbphy' nodes are manually verified.
> In order to automate this process rockchip-usb-phy.txt has to be
> converted to YAML.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
