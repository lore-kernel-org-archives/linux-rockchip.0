Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86DDED4336A
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 14:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wo/ma4JLCxeSc6NYMw2sGy5Vz7c552kvBfuIHH2EIFo=; b=ffigrxp31SBgmJ
	iQTGYOnLKKYQnLtqpAL+aACw/6TERCTaITIY6qv073NoCT0LIjVpmQE2r/ghuBFOQWW8WY5QAZtEO
	2DAV1cFfFnDlK+0JmbKxOV/ps09VRm2reeI2GeCCYBqZQsGh7Eccqil1p2vmfXLahWsfOmYbrEVe4
	uIYp7jQTPwrdgj9UXvbHXW9gMX7t7rOSeGB7CFJ7Ay1eaPX59wnnWV/IxtW5mdIkQIB9waVFcUQv1
	7vj8rUPhGTQgxEGYGg1Zr6+3OwlJZcmC7QInIcQ0MoE3QNJEMom8Y1esVuxqQRMnWic3CW/sP7l0c
	U/pPs1ZSl/CYlYnRYenA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t93ca-00000007IcX-39XR;
	Thu, 07 Nov 2024 14:36:28 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t93an-00000007IDT-2wi9;
	Thu, 07 Nov 2024 14:34:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1DBB9A44434;
	Thu,  7 Nov 2024 14:32:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10C0CC4CECC;
	Thu,  7 Nov 2024 14:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730990076;
	bh=cPfsizR0GhWQSjoMoj6ev7y0kRO6mxVltbXk9yQ6RCw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=mKF4NHK9r1+8tE9VEE779JEN4YPJLcLdTe0ttAjyIwDylxoTTtqzFbRIggnKq6uO6
	 h0ALIHV3VWB3WAFXjQfzSLL0my3BWqJfXs4I7YMzmIOnpVxYEU8JG+OMCC8Aw5lx5Y
	 P4X6ee9KvpVlu/bdq1FZZJu1k1GlZFJdrz5LM13BCPXSr54i109bus6IZWoj9hSMzh
	 oSRr+qhDaLaA5MkqRK7XwxLsFRkjTbTmOfHzQzur7abh7e+N2u0P4BjreVSRnErD//
	 G8Px6e6FJtL+VivgnxwhJaqhTXu8wxx9Q4cnHk/ZFAHffhIUx5iGO1pogYTgw6Fbgi
	 a5kieyYvbkBrg==
Date: Thu, 7 Nov 2024 15:34:33 +0100 (CET)
From: Jiri Kosina <jikos@kernel.org>
To: =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko@sntech.de>
cc: lee@kernel.org, jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
    conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net, 
    srinivas.pandruvada@linux.intel.com, bentiss@kernel.org, 
    dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org, 
    devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
    linux-iio@vger.kernel.org, linux-leds@vger.kernel.org, 
    stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale platform-data
 on remove
In-Reply-To: <4934964.GXAFRqVoOG@diego>
Message-ID: <nycvar.YFH.7.76.2411071534110.20286@cbobk.fhfr.pm>
References: <20241107114712.538976-1-heiko@sntech.de> <20241107114712.538976-2-heiko@sntech.de> <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm> <4934964.GXAFRqVoOG@diego>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_063437_824779_05F6503A 
X-CRM114-Status: UNSURE (   9.20  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 7 Nov 2024, Heiko St=FCbner wrote:

> This change was more or less a surprise find, because I wanted to make
> the platform_data pointer in the mfd_cell struct const and this the hid
> sensor hub stood out as doing something strange ;-) .
> =

> So patch 2 of this series actually depends on this change to not cause
> build errors.

Ah, right.

> But seeing that we're after -rc6 alredy, I would assume the brunt of the =

> mcu series might need to wait after 6.13-rc1 anyway - but I guess that =

> depends on how Lee sees things ;-) .

OK, I am keeping my hands off it for the time being.

Thanks,

-- =

Jiri Kosina
SUSE Labs


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
