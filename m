Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0E93C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:35:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D9D9619A4
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:35:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D9D9619A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=g12+/4zI6m9ZMiAID3egtWmN9S2QHny4kZzk3VBh3F0=; b=avW7wtWjnKooxktmLG7BxlAiC
	2sKEfiGmcthLew0vunyLqtVU8+f3shv7lzy6ITX5Cg3YQwkRe5sP+CfMxVgM96zb0DxyMkwApYp7Q
	q0ESgN/yf2f7Rt2URddLnT+8O66DGwYmmcx3kGL+dDUlSRlf7OZucM81G2nTZiJ+m5HsVe81lhWOj
	oJoDeoTZqQTcvKheHaS7cH5f8QLL32uMWiFt1QUwJW5j1g6d5Q6GjxUYYnXml8jVmSQyFW5jl3IyQ
	+Y4MAMAwXps8qJvuyMPKArFAvEo+G+DXe0YctUWD5Nff79wxts0+yzcWyebJdtfDegZLYN+mEmJv0
	IfgHQT7oQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP6TD-00HP1Y-Qq; Wed, 24 Mar 2021 16:34:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP6TA-00HP0w-Gy
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 16:34:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E15CB619E4;
 Wed, 24 Mar 2021 16:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616603695;
 bh=hUOBLPPbTSZw0MdksqtVo7DW9tnlNyx/Ii6rWxq74mA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=p8pYM0SNfVF9Zl28f0ktwPKzyr9TJCwcW1ZyyKMR18Sp4l2/jjj7jcBkhw3uyepkd
 VSnjPiYccSarkQH5C/XpD+nYYFqXMjcXpsDdsImgLvTUlN6x0+/aXz52gWXBNGlgSI
 QMxY3ScjWMjhV9uDJaTj+OR3xbL/AUKYrvJs7ORYJj/AS7KJlAg279P220x7rrqM1F
 uEuMeNPkwjrC1ysHatS9HVV6q9T/jmLsHAF1NDTJ4F0DClwYRSkrXaWWoFHa8IguVY
 6+R/xCbKHNFht2Yh/n7QsgKavxDsv5aG7euxILjOTASDLUQyvRE9FgwkjNjDuuWbC7
 JNxzdIO01PEGQ==
Date: Wed, 24 Mar 2021 11:34:53 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v5 2/2] PCI: rockchip: Add DesignWare based PCIe controller
Message-ID: <20210324163453.GA695478@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222071828.30120-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_163456_847674_6DFF6EDA 
X-CRM114-Status: UNSURE (   7.66  )
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

Also, please make the subject line more specific, e.g.,

  PCI: rockchip: Add Rockchip RK356X host controller driver

On Mon, Feb 22, 2021 at 03:18:28PM +0800, Simon Xue wrote:
> Add driver for DesignWare based PCIe controller found on RK356X.
> The already existed driver pcie-rockchip-host is only used for
> Rockchip designed IP found on RK3399.

  Add a driver for the DesignWare-based PCIe controller found on
  RK356X.  The existing pcie-rockchip-host driver is only used for
  the Rockchip-designed IP found on RK3399.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
