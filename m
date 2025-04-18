Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8315AC369C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 10:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yf0CSgsYsJtWNTku6ikm5CmwCeQYQHbjzi7+7gd/550=; b=q4Mx0E6U4p+P4i
	9VTd90CMPTuNoIyMQebkYzlkfK/6uZm9xFYkvmiw1mUkh7pOeIrdXg7LwSCkkE2VfqaDvxjlWJQYB
	4l/hyCzYbHF/Tdk2EddJvuZA9ur8ya9vL53Iv7ecNSX58+4+5wds02lyrzYprjJwUCgTN93kSN3No
	MVohbi+hccETWbK+/KlXf/Dfb8F57rLki8a+w/oDP+ZTNZBquOnC/hAqYw6Z3tx3sqesCugKAY5UK
	zq/Dswpp5iL+RBFNQFVd6TDRuLPhIm3vBEPaOupuny978SaNIRA2+Lz1WB+gbDFFOsGpTwIFRJ5DQ
	Z27OPfZqBFzuXnrh/Zaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iWo-0000000Foyd-0kiV;
	Fri, 18 Apr 2025 10:00:58 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5iNx-0000000Fnbi-3sxB;
	Fri, 18 Apr 2025 09:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=/lz4kzDd+Ofx/tYRxsAmzeEQiMcP0P6DAZ6wk+IAMqs=; b=A
	8865jdie+Au4JHglYjTkQ0ldqnWZIR0oMh3m5Aq/jB2eTyOPM8AyGa1VWuNqhcUD
	B7FesdBs1MfaNnT9h2TYICN4dqOb0tOTn9Cg9v1bBk91R7PgLB64tSazJSStNfou
	663VV4GGjYsCwW1VpVVnNniDfMaUqKkXTBnrn3+3lI=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-120 (Coremail) ; Fri, 18 Apr 2025 17:50:55 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 18 Apr 2025 17:50:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Daniel Stone" <daniel@fooishbar.org>
Cc: "Konstantin Shabanov" <mail@etehtsea.me>,
	"Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>, "Dan Callaghan" <djc@djc.id.au>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:Re: [PATCH v4] drm/rockchip: Disable AFBC for res >2560 on
 rk3399
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <CAPj87rNDsyBfy=P=0SzTm7u6Na6BpeZSpEt1mRPhLCd6rHXzTA@mail.gmail.com>
References: <20250414095332.9674-1-mail@etehtsea.me>
 <20250417065759.5948-1-mail@etehtsea.me>
 <17402f2e.360.1964640c3d3.Coremail.andyshrk@163.com>
 <CAPj87rNDsyBfy=P=0SzTm7u6Na6BpeZSpEt1mRPhLCd6rHXzTA@mail.gmail.com>
X-NTES-SC: AL_Qu2fBvWdtkAu4yadYOkfmkcVgOw9UcO5v/Qk3oZXOJF8jDLp/j0HdmVSAWfk9OO0GyOzmgmGQhZw7+16UYtfUYcQTnngy+GPTIlCzbjsNbhLSQ==
MIME-Version: 1.0
Message-ID: <a893834.9206.196484ef2ab.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eCgvCgD3P7Z_IAJowZyaAA--.49852W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hkzXmgCGhqq-gACsa
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_025150_288959_F8FCAE8C 
X-CRM114-Status: UNSURE (   6.14  )
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


Hi 
At 2025-04-18 17:43:19, "Daniel Stone" <daniel@fooishbar.org> wrote:
>Hi Andy,
>
>On Fri, 18 Apr 2025 at 01:16, Andy Yan <andyshrk@163.com> wrote:
>> I prefer the V1 version PATCH[0]. This is because we do not deal with hardware-related
>> differences at this level.  It involves a VOP-related restriction and we always  handle
>> limitiation like this  within the VOP driver .
>
>As said in the review for v1, this is not enough for generic userspace.
>
>If drmModeAddFB2WithModifiers() fails, userspace knows that the buffer
>can never work in that configuration, and it should fall back. If
>drmModeAtomicCommit(DRM_MODE_ATOMIC_TEST_ONLY) fails, userspace does
>not know that the buffer can _never_ work, because the failure may be
>transient or due to a combination of things.
>
>Returning the more localised error saves userspace a lot of work and
>enables a more optimal system.

Okay,  fine, ACK.

>
>Cheers,
>Daniel
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
