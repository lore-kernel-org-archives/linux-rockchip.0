Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43753C07E95
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 19:51:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E8AB610D2
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 19:51:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E8AB610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEVm3wEKFrNIXKg23YpQUZbeN9HIpBhepds80c+8EDw=; b=GnLHjj6qkhJag3
	MOYplM8vkkf+2d6Ho6d/qz45h03PwEWikIcuD5UtnEeY86xRWG9PvbyoAaEZRu6/yU2QqOpQS2oyH
	1PPjiXX9PgcA+qKsA7MeI+2VUYgXkECEb+ApHz/uQSEhbIAcj/ro/55jbNkNiJAax33WU4EaqflT6
	0/XMYTLyzNrwu/damf5ZRuYL/fz21yFrZGA0+KERrxIkPXdOF4MnPeLi5HuM7ebAE9f/yWIe5KN5h
	0B+AOf6Qd2fbj55wzuA83XF/+Uu/E5Ap9ii9KseiFDVTMZDbZLT8US58XO8p314XaUISUFiljApFz
	HAJ4NkG7rtudkqiwIDMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5ZIq-00BC1S-70; Mon, 19 Jul 2021 19:51:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5ZIW-00BBw4-3F; Mon, 19 Jul 2021 19:51:29 +0000
Received: from notapiano (unknown [IPv6:2804:14c:1a9:2434:2e2f:cb19:fca8:1dff])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: nfraprado)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C485E1F42E64;
 Mon, 19 Jul 2021 20:51:20 +0100 (BST)
Date: Mon, 19 Jul 2021 16:51:15 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, kernel@collabora.com,
 Xing Zheng <zhengxing@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: clk: Convert rockchip,rk3399-cru to DT schema
Message-ID: <20210719195115.cgh7fh54kwloo4o7@notapiano>
References: <20210610175613.167601-1-nfraprado@collabora.com>
 <20210624190041.GA1812802@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624190041.GA1812802@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_125128_339885_45A5568E 
X-CRM114-Status: GOOD (  11.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 24, 2021 at 01:00:41PM -0600, Rob Herring wrote:
> On Thu, 10 Jun 2021 14:56:13 -0300, N=EDcolas F. R. A. Prado wrote:
> > Convert the rockchip,rk3399-cru binding to DT schema format.
> > Tested with
> > ARCH=3Darm64 make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/devi=
cetree/bindings/clock/rockchip,rk3399-cru.yaml
> > ARCH=3Darm64 make dtbs_check DT_SCHEMA_FILES=3DDocumentation/devicetree=
/bindings/clock/rockchip,rk3399-cru.yaml
> > =

> > Signed-off-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>
> > ---
> > =

> > One caveat is that this node expects certain external clocks, mainly 'x=
in24m'.
> > =

> =

> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks! Is this blocked on something else?

Thanks,
N=EDcolas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
