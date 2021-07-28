Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A297BC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 09:52:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 411CC60F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 09:52:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 411CC60F45
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQnbE0Wbq+Uhx3Z7cH6QsJ0vQKtYNTIm20LBDiXFmtI=; b=eBCcBE+gmuvJx6
	2Bay2NIe6xKMtm7ZHtsYhXUmb8Hl19u1Rxnh4aZnb+eUm0R3DbhEXaRfwyIGYnmONXHgAj1xp74PF
	G2+W7wucil2g+fjc802BJH6LY+MafeFN6SBM8MX3ygN4iDVUv/fgQNU4rtaK0gtNpz7HQZ3GsaVew
	Fdw640Hgjm7Nn/sWZ6DvG9lpnYddPLkrVqCQvT82j1mCfmuuFmSzkybgwFGp2hg6m5DJmAH0RU9YM
	cMyr4ropN1+yIfQTlcybdFDqrACLQtkswfZuGo3P4UPMi2kExIY8HSLenYgTV/tngGZpXIgYyADGb
	zjDsX1vbfQA/MdnvOc1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8gEg-000GzR-HT; Wed, 28 Jul 2021 09:52:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8gES-000Gwi-PC; Wed, 28 Jul 2021 09:52:10 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8gEA-0004pC-76; Wed, 28 Jul 2021 11:51:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Guillaume Tucker <guillaume.tucker@collabora.com>,
 Marc Zyngier <maz@kernel.org>, robh+dt@kernel.org
Cc: Robin Murphy <robin.murphy@arm.com>, kernelci-results@groups.io,
 Johan Jonker <jbx6244@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Maciej Matuszczyk <maccraft123mc@gmail.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Cameron Nemo <cnemo@tutanota.com>, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Collabora Kernel ML <kernel@collabora.com>
Subject: Annotation for dtbscheck to ignore a defect (Was: Re: renesas/master
 bisection: baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin)
Date: Wed, 28 Jul 2021 11:51:48 +0200
Message-ID: <5095423.31r3eYUQgx@diego>
In-Reply-To: <878s1qer35.wl-maz@kernel.org>
References: <61002766.1c69fb81.8f53.9f6a@mx.google.com>
 <cff1e2d1-ceee-eee8-de14-a268429acbc3@collabora.com>
 <878s1qer35.wl-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_025208_875649_D9FE4AC5 
X-CRM114-Status: GOOD (  35.96  )
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

Am Mittwoch, 28. Juli 2021, 11:16:14 CEST schrieb Marc Zyngier:
> On Wed, 28 Jul 2021 09:59:49 +0100,
> Guillaume Tucker <guillaume.tucker@collabora.com> wrote:
> > 
> > On 28/07/2021 09:39, Robin Murphy wrote:
> > > Hi Guillaume,
> > > 
> > > Not sure what I did to get CC'd on this, but since I'm here...
> > 
> > You were listed by get_maintainer.pl for the patch found by the
> > bisection:
> > 
> >   Robin Murphy <robin.murphy@arm.com> (authored:1/8=12%,added_lines:9/71=13%,removed_lines:16/41=39%,added_lines:11/45=24%,removed_lines:18/32=56%,authored:1/12=8%,added_lines:22/83=27%,removed_lines:29/69=42%)
> > 
> > Maybe the logic to automatically build the list of recipients
> > could look at those stats and apply some threshold if too many
> > people get listed because of small contributions to some files.
> > It's not a common issue though, usually the recipients are all
> > pretty relevant.
> > 
> > > On 2021-07-28 07:04, Guillaume Tucker wrote:
> > >> Please see the bisection report below about usb2phy failing to
> > >> probe on rk3399-gru-kevin.
> > >>
> > >> Reports aren't automatically sent to the public while we're
> > >> trialing new bisection features on kernelci.org but this one
> > >> looks valid.
> > >>
> > >> The bisection was run in the Renesas tree but the same regression
> > >> is present in mainline for both usb2phy0 and usb2phy1 devices:
> > >>
> > >>    https://linux.kernelci.org/test/plan/id/6100af012344eef9b85018f3/
> > >>    https://linux.kernelci.org/test/case/id/6100af012344eef9b85018fa/
> > >>
> > >> I don't see any errors in the logs, it looks like the driver is
> > >> just not probing.
> > > 
> > > What's the actual testcase for "rockchip-usb2phy0-probed"? If it's looking for a hard-coded path like "/sys/bus/platform/devices/ff770000.syscon:usb2-phy@e450/driver" then it can be expected to fail, since changing the node name is reflected in the device name.
> > 
> > Dang, you're right.  This is the test case:
> > 
> >   https://github.com/kernelci/bootrr/blob/main/boards/google%2Ckevin#L119
> > 
> > assert_driver_present rockchip-usb2phy-driver-present rockchip-usb2phy
> > assert_device_present rockchip-usb2phy0-probed rockchip-usb2phy ff770000.syscon:usb2-phy@e450
> > assert_device_present rockchip-usb2phy1-probed rockchip-usb2phy ff770000.syscon:usb2-phy@e460
> > 
> > Now that needs a conditional depending on the kernel version.  Or
> > we could try to make it more dynamic rather than with hard-coded
> > paths, but doing that has its own set of issues too.
> 
> And this shows once more that DT churn has consequences: it breaks a
> userspace ABI. Changing userspace visible paths for the sake of
> keeping a build-time checker quiet seems counter-productive. My
> preference would be to just revert this patch, and instead have an
> annotation acknowledging the deviation from the 'standard' and keeping
> the checker at bay.

I'd be fine with that, if that is the consensus. And an annotation comment
would be good in that case, just to keep a similar change  from getting
submitted.

I guess the interesting question is if dtbscheck has some sort of tooling
to detect these "this is meant to be that way for backwards compatibility"
hence adding Rob for that question.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
