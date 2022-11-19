Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEE1C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2DdCnO7liiifaaBgvWZXxvWneHWo39QXgIZPAoR/ks=; b=iqZ3PUVhX1h589
	bWzfFCOGp4GKa4PzUsONZvlaZrs4D/m47d2LoPY4+5XUcxojP+Wy3ujiP8C6K6HDcsMDAVd0WaZyv
	WMmfoOSokWH2N6xRJIfpGWtEIkcXLCrZ/WQMDT2zm3bD6jnbN4lJO8ehhpTjlP9wb8rh/vhmk2r06
	HPuLIZNkQcMpHlyK+HD4W3DhHfcGzzbdmfqtahTuiTQE2kxT6ZQtOk1cYDr8TCUvmg8cJfEZ1DVjR
	XIvcFO3Xi6nRPPDrgDwzlR1fAzYVnIHaDgCJDd40sfdpji/ay5mRF4saJ9VC4KtEDsfwF7fLF8BYK
	8si8Bf7kUkkI2S/EdlVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHOs-00BfRl-EI; Sat, 19 Nov 2022 06:32:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHOg-00BfLJ-Ka; Sat, 19 Nov 2022 06:32:16 +0000
Received: from pyrite.rasen.tech (unknown [IPv6:2001:268:c210:aac1:54ed:fa5d:b703:111a])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D6675749;
	Sat, 19 Nov 2022 07:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668839530;
	bh=hXfe8VMNdTd6pcdsB0mu2cidi3JUTli3/j9RB6UOCHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CwIDGdurCsoYEFqPvCaL628T18sUh1mZkxdvgUm/G7p96pRJPWjeYq8hlDnF7gY5H
	 xcPVQcg8nw7Iy7Oro1J1fdJtBXYmg8DAIO2+1HaqI0JT57AZ3R3iiB3V+Dh7ZFVqMe
	 XJT6zjfTCPYzmOs0VVx25MO6NIoxviJ7KO71WurM=
Date: Sat, 19 Nov 2022 15:31:57 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 01/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP to
 compatible
Message-ID: <Y3h4Xak49kgvWYgl@pyrite.rasen.tech>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-2-paul.elder@ideasonboard.com>
 <feb97479-3c1b-9fd8-ffd7-f8e95151d8fe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <feb97479-3c1b-9fd8-ffd7-f8e95151d8fe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_223214_863775_7CC1EFCE 
X-CRM114-Status: GOOD (  22.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Fri, Nov 18, 2022 at 02:02:28PM +0100, Krzysztof Kozlowski wrote:
> On 18/11/2022 10:39, Paul Elder wrote:
> > The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
> > of compatible strings. While at it, expand on the description of the
> > clocks to make it clear which clock in the i.MX8MP ISP they map to,
> > based on the names from the datasheet (which are confusing).
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.

Sorry, indeed I did. This series has been a bit hectic...


Thanks,

Paul

> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions. However, there's no need to repost patches *only* to add the
> tags. The upstream maintainer will do that for acks received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
