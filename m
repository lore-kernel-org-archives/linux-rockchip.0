Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 458CBC433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:10:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2EFB64E04
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:10:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2EFB64E04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ELiOptcCxTmuhTLHCzBCRBhPm2J03KDlXVMnZVg8A88=; b=SOR/yzkOpLCZtkmlhxnIBX7Rz
	PLYkxRZvH7A2UMi4s9wmYFoeEwwknDXE//R7QHwc3adLefaWZ+3Qpo6NZSK82IVTgdc2v0Ta5F8L2
	qsL9W2MkqHzdI+M8HKvL1bw5f6SGpKh1dv/kjWDvutKnxoXB2mo7QD+N+hY784h4scK69wMvAhrbx
	PsHwD/vakvzIEnCHKMTFn3PlRSllhvG+denwlOv4hPNJKYpdnhWA0CVIzB3IzwYTSq+0EbpBItoOa
	0rMUcSO4yAdTQQOHsr8s8eNas+6LHyD59HIgn6cdt1jklhO8bOzRCZQFekc89YzmTcAMQYkwbGczh
	fDimC1gjw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCHux-0001xJ-3e; Wed, 17 Feb 2021 08:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCHsk-0000ib-5n; Wed, 17 Feb 2021 08:08:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 39B3A64DE9;
 Wed, 17 Feb 2021 08:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613549296;
 bh=C4GYwI6WcsErZN4W/obxdKpSWHSbu9N/1Dj7xZ1Mc4I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oPCAO0OtyIr1s5vZYDHw7kkZRjTB5PHP1tI1eYaC4Swu8rVvyuJM3AWH/1StSL6UU
 dlPbFzmiKuO/Z3E5z7kDgwDz/ewRFB2+zvPNVh4spnmXL1LTMz6pegEq+vH0pZqrU7
 bpypK3ANhJ0jqFTA+xrRRpytHngITnyNLbHYuL/U=
Date: Wed, 17 Feb 2021 09:08:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzO7SRmBKzGeMUS@kroah.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_030822_649810_ACCDF165 
X-CRM114-Status: UNSURE (   9.08  )
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
 shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> The IMX8MQ got two VPUs but until now only G1 has been enabled.
> This series aim to add the second VPU (aka G2) and provide basic 
> HEVC decoding support.

Why are you adding this directly to drivers/staging/media/ and not
drivers/media/?  Why can't this just go to the main location and not
live in staging?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
