Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B616CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 07:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kx+uWd2R5XKFp5MFECeolRAPdiHMMqH3wp9RIeMuP84=; b=K6hK2X3pmHpfklx8FZt4qVRxtj
	896OFt6MsxRoB2ssANgQFV3mQ54bNDzMc6+48E12atmlrzaE+R2JBNhyuGmGI40PXC+Lfk/meadPm
	3VJ62w4OjNOHOj5nnkULYqTHMYR4ElJpGpF6CF1/QsAW//YAnJ4HrvEahj2TEOO2d6IVG6v/959ar
	a7felsiax822iGwDqD+sbIXzfprIfTBkDH+Zvhm/vApvkL7waxRTChzUwAl5EEQJjqS953AtcgqkJ
	nKO4AS2GqvFvqnurToV9bJqlkDs9MmDUohPz2qyFhkuepU918b9tMPICY5JlGZc+XmcL5x8yIfgig
	RBVnvlPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcHz8-00000007JTb-41n9;
	Wed, 24 Jun 2026 07:25:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcHz7-00000007JTB-2Asm
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 07:25:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F1E60601FF
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 07:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFC51F00ACF
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 07:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782285920;
	bh=nvnhHh47CXixoylXWGOHPJF5vecV8c8rpU9eHVVg6DY=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=BWFXAxX/us4DQUK1idO2Ki9uFSo0MO6O6YaIQa8wMrk29Wvl4H/TKJzoVttGSCeLA
	 Fw+NxnPqoQRwnUpQE5C6BudZxSheDVaqnhvWjhUiJPxF+3wV5/YG1rGryzMmQwahlU
	 g9NjlbTZ/7YQdivSYRp7S3AqRIGL90jlIxUVNUJRZFFW6ArNOWjHRg7PiqY/NAdfX8
	 HQf7v9geddz5Kk9Q9Q7J7bBCr2nzd7GKcRobXl10AH10XMpw6KbfBhMixhNlYGlcjz
	 r/5CGXIkZS62mPOoWQs5i5Jr3QhztcfMPaFZuaO2xAcwwVIRpl8hkSLwfX5eKwLyCf
	 ol3EpNlVKoRCA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-396775c2720so5052951fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 00:25:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+nAdX8vlfy3aZ46df8G66RhFagDg67zPhXzghePiEGCAaJZQ/cZdehUOk01xTxijITNTQzxFmjDuNDXGCztQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLU1lxjLMWeJcQB14DYxz8/GsmxA9guFPbjAToA6UBHk/XXdt0
	nsZ/cITOwrMohyRI0jDpGrbXyRTAkFgTQj3zmf04X8UtKTu+JL+OxRLCtH9sQs7opYd97HjgHJa
	SRui6h2QcLzk5i8ZWXjZuavDReao7CUSA0Yz1ULAj1w==
X-Received: by 2002:a05:651c:897:b0:396:b398:5956 with SMTP id
 38308e7fff4ca-39aba22f713mr5033881fa.16.1782285919374; Wed, 24 Jun 2026
 00:25:19 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Jun 2026 00:25:16 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Jun 2026 00:25:16 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <112d2563-e650-4881-bba0-335f6a3fcb8a@arm.com>
MIME-Version: 1.0
References: <CGME20260610153425eucas1p29d20a835114a28b15cb12ea00534e074@eucas1p2.samsung.com>
 <20260610153329.937833-1-v@baodeep.com> <184d315b-a0a1-4792-8a40-1b4967025916@samsung.com>
 <112d2563-e650-4881-bba0-335f6a3fcb8a@arm.com>
Date: Wed, 24 Jun 2026 00:25:16 -0700
X-Gmail-Original-Message-ID: <CAMRc=MdP8Wf6QRXGHpb3KJW2KMidSe-0LeyKKTYix=wYKZcPuA@mail.gmail.com>
X-Gm-Features: AVVi8CfWZEwy0Hj6hsY9nADi3QPZuC2gya2F8U2aO77pZ-fX6Cr7FXVhzwvDF28
Message-ID: <CAMRc=MdP8Wf6QRXGHpb3KJW2KMidSe-0LeyKKTYix=wYKZcPuA@mail.gmail.com>
Subject: Re: [PATCH 0/2] gpio: fix sleeping-in-atomic in shared-proxy; restore
 meson non-sleeping
To: Robin Murphy <robin.murphy@arm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Diederik de Haas <diederik@cknow-tech.com>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heiko Stuebner <heiko@sntech.de>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Viacheslav Bocharov <v@baodeep.com>, Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
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

On Tue, 23 Jun 2026 17:16:44 +0200, Robin Murphy <robin.murphy@arm.com> said:
> On 11/06/2026 9:26 am, Marek Szyprowski wrote:
>> Hi Viachesla,
>>
>> On 10.06.2026 17:32, Viacheslav Bocharov wrote:
>>> gpio-shared-proxy chooses its descriptor lock (mutex vs spinlock) from
>>> the underlying chip's can_sleep, but under that lock it calls config and
>>> direction ops that reach sleeping pinctrl paths. On a controller with
>>> non-sleeping MMIO value ops the lock is a spinlock, so a sleeping call
>>> runs from atomic context:
>>>

...

>>
>> I've checked this patchset with these two reverted and no warning was reported.
>
> If it hadn't already been fixed (...)
>

About that - Viacheslav, do you still plan to submit v2 of this?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
