Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD04E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kSXogKMQupEqoJjRc+76ONWnID3019wB25eX8RokxU=; b=um12MgDl8sd7G+
	sSBXaN1VtWiNhFFakumjmIzpcFt7Z6VGiW4uwtuTJwJES2Ey2kmLSi8IueNKbDkfWuMj1lXs6eXKS
	HYEzLRN8RP8SHIDe/mIRlw8TaD4d4e1OBzc8RRJTI66mgHD2ve6anb5pyBRQAnJWmoJIbz8a1LXY2
	XLD7r39v60iHDPkNDvW36dGH1qahH9agO+1eLhWCzMyueFY5BOZI0gqa1am1nqCWpum+d/m57zHtT
	g/oCxzPdBSKRAjbqkAhDxP0X513cmfYDy7StmBcTLFMxdp8ge9AZcbPxE3DM4DBC64W46W6WGnLBF
	BfQXEc4xatGMFN1scxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLNfJ-0000000F8Kr-1XUN;
	Wed, 11 Dec 2024 14:26:13 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLNeF-0000000F8BI-1Xlw;
	Wed, 11 Dec 2024 14:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1733927107; x=1765463107;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=TO+YB/Y/4TCTstWKm/S0FbmmY68P0DKD/Yt8QeePxEs=;
  b=QM18a+FfwzKc59yDbqNShEEtNJq6QfLdIgmL89MMFpQbYQtg02wQSfTQ
   MxkadcVhW2J5FcS06M+N0g1YWXlDgOAXDO5iWLz1fN3KRWgWY7NpSyiVU
   zFwVW21VHtpjVQ8K/K6Et+DGSZWQ5Jwd1hnOrx1dV5GnphFZm5i1ZCZ0M
   jwXIw504BBY0nNiUb0eDWKPbFBZ472tdZc/17fvSdv0hr/PCHnBmmlZ7E
   kMg416MhUM4ywadceHiiDDOhYj4hNEHCltgqch1ztOqjzlW8qSRPAo7Oo
   HGkq8TocxL13E0HVsE7BaShJu33AuMMHAs0k5IqcD0yHDjHH31DrplCI3
   g==;
X-CSE-ConnectionGUID: zErREWsQTXy1wu/SDAnGUw==
X-CSE-MsgGUID: AItb2DdpSo6uZ36Aj2TTyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="44979298"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; 
   d="scan'208";a="44979298"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2024 06:25:03 -0800
X-CSE-ConnectionGUID: Kd1QKuo+QR6IoKNW4XOJAw==
X-CSE-MsgGUID: kCNsvwGPQyyYK8GHI13fsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="99920819"
Received: from spandruv-desk1.amr.corp.intel.com ([10.125.109.242])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2024 06:23:41 -0800
Message-ID: <8d736607552e88f28672ef5217431f61951df126.camel@linux.intel.com>
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
From: srinivas pandruvada <srinivas.pandruvada@linux.intel.com>
To: Jiri Kosina <jikos@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, jic23@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jdelvare@suse.com,  linux@roeck-us.net, bentiss@kernel.org,
 dmitry.torokhov@gmail.com, pavel@ucw.cz,  ukleinek@debian.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-leds@vger.kernel.org,
 stable@vger.kernel.org
Date: Wed, 11 Dec 2024 06:23:40 -0800
In-Reply-To: <n914pn7o-pr9n-5ss0-p744-73402nnn843p@xreary.bet>
References: <20241107114712.538976-1-heiko@sntech.de>
	 <20241107114712.538976-2-heiko@sntech.de>
	 <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
	 <4934964.GXAFRqVoOG@diego>
	 <nycvar.YFH.7.76.2411071534110.20286@cbobk.fhfr.pm>
	 <20241112143732.GG8552@google.com> <20241211120844.GD7139@google.com>
	 <n914pn7o-pr9n-5ss0-p744-73402nnn843p@xreary.bet>
Autocrypt: addr=srinivas.pandruvada@linux.intel.com; prefer-encrypt=mutual;
 keydata=mQGNBGYHNAsBDAC7tv5u9cIsSDvdgBBEDG0/a/nTaC1GXOx5MFNEDL0LWia2p8Asl7igx
 YrB68fyfPNLSIgtCmps0EbRUkPtoN5/HTbAEZeJUTL8Xdoe6sTywf8/6/DMheEUzprE4Qyjt0HheW
 y1JGvdOA0f1lkxCnPXeiiDY4FUqQHr3U6X4FPqfrfGlrMmGvntpKzOTutlQl8eSAprtgZ+zm0Jiwq
 NSiSBOt2SlbkGu9bBYx7mTsrGv+x7x4Ca6/BO9o5dIvwJOcfK/cXC/yxEkr1ajbIUYZFEzQyZQXrT
 GUGn8j3/cXQgVvMYxrh3pGCq9Q0Q6PAwQYhm97ipXa86GcTpP5B2ip9xclPtDW99sihiL8euTWRfS
 TUsEI+1YzCyz5DU32w3WiXr3ITicaMV090tMg9phIZsjfFbnR8hY03n0kRNWWFXi/ch2MsZCCqXIB
 oY/SruNH9Y6mnFKW8HSH762C7On8GXBYJzH6giLGeSsbvis2ZmV/r+LmswwZ6ACcOKLlvvIukAEQE
 AAbQ5U3Jpbml2YXMgUGFuZHJ1dmFkYSA8c3Jpbml2YXMucGFuZHJ1dmFkYUBsaW51eC5pbnRlbC5j
 b20+iQHRBBMBCAA7FiEEdki2SeUi0wlk2xcjOqtdDMJyisMFAmYHNAsCGwMFCwkIBwICIgIGFQoJC
 AsCBBYCAwECHgcCF4AACgkQOqtdDMJyisMobAv+LLYUSKNuWhRN3wS7WocRPCi3tWeBml+qivCwyv
 oZbmE2LcxYFnkcj6YNoS4N1CHJCr7vwefWTzoKTTDYqz3Ma0D0SbR1p/dH0nDgN34y41HpIHf0tx0
 UxGMgOWJAInq3A7/mNkoLQQ3D5siG39X3bh9Ecg0LhMpYwP/AYsd8X1ypCWgo8SE0J/6XX/HXop2a
 ivimve15VklMhyuu2dNWDIyF2cWz6urHV4jmxT/wUGBdq5j87vrJhLXeosueRjGJb8/xzl34iYv08
 wOB0fP+Ox5m0t9N5yZCbcaQug3hSlgp9hittYRgIK4GwZtNO11bOzeCEMk+xFYUoa5V8JWK9/vxrx
 NZEn58vMJ/nxoJzkb++iV7KBtsqErbs5iDwFln/TRJAQDYrtHJKLLFB9BGUDuaBOmFummR70Rbo55
 J9fvUHc2O70qteKOt5A0zv7G8uUdIaaUHrT+VOS7o+MrbPQcSk+bl81L2R7TfWViCmKQ60sD3M90Y
 oOfCQxricddC
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_062507_419450_A84BF6AD 
X-CRM114-Status: GOOD (  18.81  )
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

On Wed, 2024-12-11 at 13:24 +0100, Jiri Kosina wrote:
> On Wed, 11 Dec 2024, Lee Jones wrote:
> 
> > > > > This change was more or less a surprise find, because I
> > > > > wanted to make
> > > > > the platform_data pointer in the mfd_cell struct const and
> > > > > this the hid
> > > > > sensor hub stood out as doing something strange ;-) .
> > > > > 
> > > > > So patch 2 of this series actually depends on this change to
> > > > > not cause
> > > > > build errors.
> > > > 
> > > > Ah, right.
> > > > 
> > > > > But seeing that we're after -rc6 alredy, I would assume the
> > > > > brunt of the 
> > > > > mcu series might need to wait after 6.13-rc1 anyway - but I
> > > > > guess that 
> > > > > depends on how Lee sees things ;-) .
> > > > 
> > > > OK, I am keeping my hands off it for the time being.
> > > 
> > > I can take it now with an Ack.
> > 
> > Looking to apply this set now.
> > 
> > Ack please.
> 
> I'd preferer if Srinivas could ack this as the more specific
> maintainer. 
> Srinivas, please? 
My ACK is already in the patch:

Fixes: e651a1da442a ("HID: hid-sensor-hub: Allow parallel synchronous
reads")
Cc: stable@vger.kernel.org
Acked-by: Benjamin Tissoires <bentiss@kernel.org>
Acked-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>


Thanks,
Srinivas

> 
> Thanks,
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
