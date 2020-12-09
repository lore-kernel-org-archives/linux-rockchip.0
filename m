Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2764CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:35:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7A6A23B51
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:35:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B7A6A23B51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=mM/YJZe7iHdtGAhDqRsnyd6deS+ti1auJJM/0EAmEdM=; b=XAtA6NsIKTEjRzHJJcRS2tdhd
	lKwvpEndHWd9QiuwFbGjZ1vqgrFZUswq4fXbWjlp+9I6qAvAEitHSqdA5/MzbhEYh7ZQTAmu05y4+
	bpeBhCHmdPnLai24+CHn9yZIb3n7MnHPur++M9bh/f+ClmGtYRdoMjD5sRCowmVWzAFRkq+7b58Ko
	/PA9qMXpxUYw1BoD0xuqjDJB7U7NtyqMfyqVchLYoJEBXBRbmB8cNZi5fH9Ose8C+5an32hGL2wJP
	Vq/UWJC1YZsdRZIIs5nz/Zf3MQwBrQCvZo0xNGBD75AS5ultgdbGmcac+sIM8OrYJntmqANicUSNw
	We9rUH/hQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn76u-0005p7-S4; Wed, 09 Dec 2020 21:34:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn76q-0005nw-84; Wed, 09 Dec 2020 21:34:52 +0000
Date: Wed, 9 Dec 2020 15:34:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607549691;
 bh=Ijxjlj4lL8UE+hp25kexw4TgoGCcQA02I64k1WeFKrw=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=UhR87/9/SGHGsxnhTZM+hwkTVKtTVWVCfjhLkZ4gVTJ0V/BucF92vAzxs3XYqaVUh
 9LnRCv7JNdM4tA5qqQt5+u3OEOJjxPxpNP0YUJs5gzX3zYEhOhii1vio+F9KwapVAT
 x95HYpilhT8X0umpXgc4tt1wIUwKq9+HcOrgwDk6Jh5sVGvPFmZiYgEvKXwzSzKZ0a
 /e+jlGom0maC7iFIY10cPdyyaq11fmQrsoDwGNR8cyvh+AibQ1nyGYfWmY48r0aD7X
 kjxCKedr/NRi11USZD0vCSzi5lGK/fizZ7Nlk/cvxSfRbpUqrJAFj9YdJxeAtLvHZ8
 Qs3rcDwNBgc5Q==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209213449.GA2546712@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209212017.vx7dps3jasjcwg6j@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_163452_366812_BD72E16D 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 rjui@broadcom.com, f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com,
 Michael Walle <michael@walle.cc>, rrichter@marvell.com,
 linuxppc-dev@lists.ozlabs.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 09, 2020 at 11:20:17PM +0200, Vladimir Oltean wrote:
> On Wed, Dec 09, 2020 at 02:59:13PM -0600, Bjorn Helgaas wrote:
> > Yep, that's the theory.  Thanks for testing it!
> 
> Testing what? I'm not following.

You posted a patch that you said fixed the bug for you.  The fix is
exactly the theory we've been discussing, so you have already verified
that the theory is correct.

I'm sure Krzysztof will update his patch, and we'll get this tidied up
in -next again.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
