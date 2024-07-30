Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEF0C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d0OSNO4/OZLWtVHF4Pt5j1YYBZNGDajDuAsINgb8J0=; b=W9Rh4X2un4woOe
	nAlbt3zNdKzc11SB8NWmtsJOgRwruXmzQ5YFEBakQm5wy2eP1lYq8MOPhnrbYMDmi8GxQHGrqjxKO
	GvCzTl1ZJEOTE7NFvbuc50Gdj0JSoxBEam5w6yWS0eUpP7UuEtYmeREyW+gOZAGPsZ6FYADACdRjm
	bCfBkWB+SMHOtrUKrB1pn6zz+fDqW/7gWm418qHqSWzOOcmpfRhpif7RHRMgD/1ZsicM5rPgXTVa5
	FFwNLmfq2iPRFNnZeaJ4CgGyw6XMcwpFv9maTU9qKC2V69E//3JaADdIjqtoo6YeXUrQJbIQLA77u
	7WxDdGWDwl/0MyecC2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpRV-0000000FnIZ-0MfR;
	Tue, 30 Jul 2024 16:11:17 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpR1-0000000Fn7w-1GUx;
	Tue, 30 Jul 2024 16:10:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 32B6CCE0E70;
	Tue, 30 Jul 2024 16:10:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9E8C4AF0F;
	Tue, 30 Jul 2024 16:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722355844;
	bh=ruZCOMj4GJJR9diWNZwtPXkWLCbh7l5zwXN9Wrur3to=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hscoFwZOwv5/8Bg9JkyOHYkxUOVRz9xOXGnuptijczkPuXrxJ3KDhGgmoW3Ok99cD
	 mOM0TjXktxqYjpiYsHszIPlzylf764x5Uc8piW+7hFzXvxazi61UgnzmuiquLY0me9
	 5zy3SSqftcye4xK69nsBNrzRoQNdNcPb6OKHKhncZmAAVhL+7FKDM/MchUuuCL7BY4
	 WQiui4vW/5kUsFxzdMQxA37/sRla1cHelMgY8jKTPACT0QEyHzx8zmJan4CwiieJGl
	 hqzHPw+ANKKEZNqe7nF52DT/kqldmhbIvZ6kxl4UcAvwQe1O2WvN5C6PACEHANbMZk
	 LNWArYpWTcp/Q==
Date: Tue, 30 Jul 2024 10:10:43 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
	Peter Rosin <peda@axentia.se>, Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v6 3/8] dt-bindings: hwmon: add support for ti,amc6821
Message-ID: <172235584253.1397741.13902491716086703093.robh@kernel.org>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-3-f9f6d7b60fb2@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-3-f9f6d7b60fb2@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_091047_531382_A9F9309C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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


On Thu, 25 Jul 2024 15:27:49 +0200, Farouk Bouabid wrote:
> Add dt-bindings for amc6821 intelligent temperature monitor and
> pulse-width modulation (PWM) fan controller.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/hwmon/ti,amc6821.yaml      | 86 ++++++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml       |  2 -
>  2 files changed, 86 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
