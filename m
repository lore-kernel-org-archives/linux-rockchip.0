Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE6FC54E66
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Mar 2024 23:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5MG/HulRcdBEwixz/okNV8ly9ytDZF7WnmW1wDpS80=; b=C0UjAba8nVqqqW
	GU7FB6Qtxz6G2VB28Znqb45/BVVSdYPMs7imlFvZtel1SyTu9k1xMNJa6cW6K3eGHS8iAp1qK8LK3
	9pzh1sj0rEmGmIT2BddIaR8soU9lGeo7RZIpFCwfOPcUbi74i4kSUFw7CSXhZZPlV+Xw8cCQW115t
	kVqP6bE3++JO7dLKDL8FreRYDHlIHK4v6ERCPb7EFr54tUtLX60HiUfjZyYRfueQWdSX1Heu9VjQ1
	g8p5dvuF3LT9Tb8GMsLHkYmSZ6yUiAbCXZZh4NUYtJ3e08ylbcaaAskQrm7rp47jeH4LEHX/damnp
	on2S4l+ACzCss95y8QCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkYQk-0000000CJwV-2iIY;
	Wed, 13 Mar 2024 23:54:42 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkYQh-0000000CJvC-3EEL
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Mar 2024 23:54:41 +0000
Message-ID: <22f5c178-5c7b-4971-a93c-020913decfa0@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1710374074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qKbcUpCMjFnZRisiSg2oV2LxlfIvDrhVcsFE8vaadrE=;
	b=bvX/By1gaQjqJ3GwgA2ebPhlrc8TYjpI9pXhYZbFTtAg0b5O3cvI0IsH+y+wV50DwNbn9n
	lZUhWobGPAWNrR/IqL8/tK6QK2S2+Ws/VZRF9C/+9CTHqWftoAMwckKhqpwOnLEhMMBd5Q
	p+oRXN01WLRuJ8tPvZ5Ukyvuj0oj934=
Date: Thu, 14 Mar 2024 07:54:02 +0800
MIME-Version: 1.0
Subject: Re: [v9,23/27] drm/vc4: hdmi: Switch to HDMI connector
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240311-kms-hdmi-connector-state-v9-23-d45890323344@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20240311-kms-hdmi-connector-state-v9-23-d45890323344@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_165440_040884_096B7364 
X-CRM114-Status: UNSURE (   5.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


LGTM,


On 2024/3/11 22:49, Maxime Ripard wrote:
> The new HDMI connector infrastructure allows us to remove a lot of
> boilerplate, so let's switch to it.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>


Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>


-- 
Best regards,
Sui


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
