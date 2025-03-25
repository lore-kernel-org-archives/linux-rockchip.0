Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72862C36005
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Mar 2025 11:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErqWCwN238HyJC8R81uzttrIbeZWBfS/up/F1Dkzjj4=; b=aOH+13cIhfWmzw
	GvBBwa1KjkD8t8utZoal+HjAuwwVL+XT0wa/ORRpTpSJO4rGx4zNZLVgZ4QZibWIjmhVvZuTgG3Z1
	KbPWZ1ISbmE1oQmIhQ3VVvUFAtgrzT81MBS0awugouM+8jparTaCHzsP3GEtYOHn28yC2Uw9xPyuZ
	HKEeu3CazNBtSS9D0evE8wC4nDc5F9PSTLqSUZcVv4fcZOkQHxW+CH1qTbJgWwWd9Pnh3Gwl+QsXe
	mH6EmMZ+DcBKHlaaB7q7SOnciSl6S/iP4WFGNLhwfKpzl2lUq1CETVGKCyfttCRjDbV5k6/VokNP4
	MSCFroRI/RkYnwwWg0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx2A7-00000005aye-0gVE;
	Tue, 25 Mar 2025 11:09:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx27B-00000005aMn-2u1D;
	Tue, 25 Mar 2025 11:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1742900795;
	bh=D0N/mgLzCXi4oZJoUT9/lMZngBeCJnMRqCEe8RPVzCw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BDM6SVMILwPq70pCVbl5bItk8GC0tcw9Yf/34rYFw6mCnsN+0yUhfJ/hjiEeDmn72
	 U/rtTB5SmTcJGgmK3BZgMDjTc0hOnJaukjn/UNzwgBnVk7brn9q0PkuiUIBfUuZDFV
	 /zv/Zxa8KTIPQG2taIBBWZ5p/GXotmZq93q8rvpyMR3QhlH9TaqL4UWMJLUDFeiJav
	 oaWEJjL7EdSh00MXLBQG9R/fO5qaK1ES5NL0feETn5ewOfDXhGrOCpSZC+OTwfLJOL
	 KAzWvgqVBrQpvPHyVOUJI/5otjdYifxjbuAroFyqWGttAulvH7kZxZ+7Cd/mLVZAPr
	 QrTihiq9olnjw==
Received: from [192.168.50.250] (unknown [171.76.87.92])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8ED1117E09D6;
	Tue, 25 Mar 2025 12:06:30 +0100 (CET)
Message-ID: <c71855d0-2638-4f06-9b75-cdbd137837bb@collabora.com>
Date: Tue, 25 Mar 2025 16:36:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] drm/ci: uprev mesa
To: Daniel Stone <daniel@fooishbar.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com,
 lumag@kernel.org, quic_abhinavk@quicinc.com, mripard@kernel.org,
 jani.nikula@linux.intel.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250314085858.39328-1-vignesh.raman@collabora.com>
 <20250314085858.39328-2-vignesh.raman@collabora.com>
 <CAPj87rMjF84yyPqBshuGu=8qx6Xhq9Z-HgEnQe=tRtbu3E8OtQ@mail.gmail.com>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAPj87rMjF84yyPqBshuGu=8qx6Xhq9Z-HgEnQe=tRtbu3E8OtQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_040637_890483_3B806657 
X-CRM114-Status: UNSURE (   9.05  )
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


On 21/03/25 15:56, Daniel Stone wrote:
> Hi Vignesh,
> 
> On Fri, 14 Mar 2025 at 08:59, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>> LAVA was recently patched [1] with a fix on how parameters are parsed in
>> `lava-test-case`, so we don't need to repeat quotes to send the
>> arguments properly to it. Uprev mesa to fix this issue.
> 
> Thanks a lot; the series is:
> Acked-by: Daniel Stone <daniels@collabora.com>

Applied to drm-misc-next.

Regards,
Vignesh

> 
> Cheers,
> Daniel
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
