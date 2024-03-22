Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09838C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7luNgrhJlpt3uIwsIF4zD40ufLw478EMLoEECTR8Fc=; b=wrvS6EV6D6n7fN
	QKrDpxwCSKFl3C30h/V2GuD1MlnSvo/fMN+qdae5oy8ObyPTs78lp09rrwnfSyMg4ZiN9wydHc1nd
	gUhbg4O4ex6DFmHzFEJCJSoT/sJIznleUxlmxNx2ApiXNtLeWR5I6JJYCTVrtKeydCxGgEFFyL4Xb
	2v3S9HVrBTAcnaetw/0hTGD41xTg45JtIwTcjzigp05LOHWMb9s6fOPAZh2yXlyVxZyKWBDZxGNEK
	6D1vodWgSXE7hRuDAFL8c0Lq7uw+s3HSaP4prwvjt4J9QmBOfemAFiU2kye0valiNaMzUhw3tVV3b
	W7RRVmlJbmEuVMuVoEFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfuu-00000007YKa-1Hhc;
	Fri, 22 Mar 2024 14:30:44 +0000
Received: from out-186.mta0.migadu.com ([2001:41d0:1004:224b::ba])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfuq-00000007YG0-39QB
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 14:30:42 +0000
Message-ID: <fe4ea866-5485-4041-9a06-5441c429b150@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1711117835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IllocFnwNiXVGU+HouNFbx0kAsYD151iYbY5EqUrK60=;
	b=vb2tIA0mE3RjQRmFtwRGeRNWtPVle8xwPuGz3k0mXmPbxA9+rb6RH0etsFkHhWQAK0DPpa
	g5mehHDk0VOcMpylaYKuk/GPkLTeV+eLrTyDxbPhCe5wLBDOUZZwHJnSVNO/KTYtRNTvk5
	0YVP778XwUltNtoGBLyTwJ0FFHUEiCo=
Date: Fri, 22 Mar 2024 22:30:20 +0800
MIME-Version: 1.0
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
 <20240322-loose-resourceful-bullmastiff-92cfaf@houat>
 <7835e928-7d09-446e-91dd-13a0fa549bc2@linux.dev>
 <20240322-steadfast-tanuki-from-mars-b5ea5f@houat>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20240322-steadfast-tanuki-from-mars-b5ea5f@houat>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_073041_098784_3F9FF1FE 
X-CRM114-Status: UNSURE (   9.58  )
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


On 2024/3/22 20:31, Maxime Ripard wrote:
> On Fri, Mar 22, 2024 at 07:13:54PM +0800, Sui Jingfeng wrote:
>> Hi,
>>
>>
>> On 2024/3/22 18:31, Maxime Ripard wrote:
>>> Which default config are you talking about? This compiles fine with all
>>> drm-misc defconfig, x86 defconfig and allmodconfig.
>> The drm_hdmi_avi_infoframe_colorimetry() function is belong to the drm_display_helper.ko
>> kernel module, it get called from hdmi_generate_avi_infoframe() in drm_atomic_state_helper.c.
>> While drm_atomic_state_helper.c belongs to drm_kms_helper.ko. Therefore drm_kms_helper.ko
>> is dependent on drm_display_helper.ko implicitly. So we probably should select it.
> Right. I was asking which config are you using to generate that build error


I'm using the arch/riscv/configs/defconfig, with the following module de-selected.

CONFIG_DRM_RADEON
CONFIG_DRM_NOUVEAU
CONFIG_DRM_SUN4I

  

> Maxime

-- 
Best regards,
Sui


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
