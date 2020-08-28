Return-Path: <SRS0=+8WL=CG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79967C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2020 04:58:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43CDD20848
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2020 04:58:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="op2PNIid"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43CDD20848
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QuepoZGBvos/Q7fy0YrDa0+uaY6QIFFfSlLsq0/vdoI=; b=op2PNIidqVTWgu/+ezrsdrM31
	tI9SuaKW83mnBNg+mBInL1FfBGtxFqTvnTZkr/dKx8Pmpo4Z84zeMIrjVnIZKerEt50FpsCPDXkbd
	1Ji+wzYk0N2f+3iD2+aFfXi4Q3Er+yW3bIJZ5yToM6c62TGukciuXzTyfjLfNvfm3q4YfTt+Cw9Uo
	/LY7BX0kHNAg1oXZwwPn3fv6vaTqn0Pc3TU1aEtf+3+1BHqnaW2nsBjQEod0EzdGkdX1aEeQbLeCD
	oXH5VSnhpkUEBDrVRvbXxEhJDCEAMgHu5iuK2a438/u3Q7HUSxhSZ2vB4n8MwMzaGKWULn8DYOSa6
	S3CsR1vJw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kBWT8-0001nI-Bo; Fri, 28 Aug 2020 04:58:30 +0000
Received: from smtprelay0190.hostedemail.com ([216.40.44.190]
 helo=smtprelay.hostedemail.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBWT5-0001ma-Rk
 for linux-rockchip@lists.infradead.org; Fri, 28 Aug 2020 04:58:28 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id E8D7F18018051;
 Fri, 28 Aug 2020 04:58:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: ink23_410c29327073
X-Filterd-Recvd-Size: 1886
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Fri, 28 Aug 2020 04:58:24 +0000 (UTC)
Message-ID: <1fd895d12c756478ebfb92de1252b772b6fd417a.camel@perches.com>
Subject: Re: Printing bitfields in the kernel (Re: [PATCH] drm: Parse
 Colorimetry data block from EDID)
From: Joe Perches <joe@perches.com>
To: Pekka Paalanen <ppaalanen@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Date: Thu, 27 Aug 2020 21:58:22 -0700
In-Reply-To: <20200827103456.57edaf59@eldfell>
References: <20200826142328.131144-1-algea.cao@rock-chips.com>
 <20200827103456.57edaf59@eldfell>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200828_005827_945662_907451BC 
X-CRM114-Status: UNSURE (   7.68  )
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
Cc: daniel@ffwll.ch, airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 2020-08-27 at 10:34 +0300, Pekka Paalanen wrote:
> On Wed, 26 Aug 2020 22:23:28 +0800
> Algea Cao <algea.cao@rock-chips.com> wrote:
> 
> > CEA 861.3 spec adds colorimetry data block for HDMI.
> > Parsing the block to get the colorimetry data from
> > panel.

If flags are int, I could imagine another %p<foo> extension
where %*p<foo> is used like:

	printk("flags: %*p<foo>n", flags, bitstrings)

where flags is:

	BIT(0)
	BIT(1)
	...
	BIT(last)

and

	char *bitstrings[] = {
		"bit 0 description",
		"bit 1 description",
		...
		"last bit description"
	};

Or define YA struct with 2 entries as the struct members
and use that.

struct foo {
	unsigned long flags,
	char ** descriptions,
};

	struct foo bar = {.flags = <flags> .descriptions = bitstrings};

	printk("flags: %p<foo>\n, &bar);



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
