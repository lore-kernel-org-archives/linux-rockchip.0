Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71EAC87FCC
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 13:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sv5NJXJqkh8oEEtWHkcjcGzJjDQuP7mY3oasQ3HEsM4=; b=sq2oSHy1Us7M4v
	vK/46P2dZIHhNrWcoaiYjxqJwcCOFy9mvYVZPgpp8MDGhZ5owiRHWh5j/C8XoTF/GH/o4XA8n/HHz
	KPBV6rvE0aAK3zgfDSD85YpXM05nK1ZE9UUN0qiNvQqyg70kpmSse1wF6tbgTCp1Cel2arIV50QAo
	tx+XKlyFmQyFgAn/7hJMNdW+gMyjmEUdN1TZgQNTETcAdm+J7d6TicdTYtYFyL5YHwCbILQaU8OyP
	lP4AKJFyDW2x0Hsbjy4hLGeHWNR3ZjLzqNjmLWDM/2sFd4uvV6k6kYYr9gZcoljJcGdbVTR9pjj6Z
	oLd7jUi1pGMnR2HFrLqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhToB-00000003lDw-3DqA;
	Thu, 31 Jul 2025 13:58:59 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhTJg-00000003gt1-37od;
	Thu, 31 Jul 2025 13:27:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1753968430; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Wd157ipHbyNwRd7zSLEBZrjL1NwE7wlcP7m29JHZAl4aMg4StR8Ewkw/JhmY3EjbCNZNTXM4DQXv54EwRb4mHSAJdQXOp9b946vc5Z+TwmfAZjnDqfaiokG8wLtxt09CtEEy3wCY7TuJUy475xOAMr0MA9lAyH7meSZGglcEQ4w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1753968430; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=COOo3jiK9lz3rMXgTzpbFodohMhA2czPItwQ82+elrw=; 
	b=c/93OTp41HKxDz/ybAc59tvWucKS6YrIVxmfDdwX8QaU9UxYAyo4Ji6EYjsg5M4l2H312fi/hVX77IDTyZMrhseiy96V2y9yNdUTFkza1BSbHaMUmlWX/UJ6jsoIcdVHtwCp7LVgd/cTkF+Ab9q4vIr3aAjRvF+OTvP+KdH1Ma8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1753968430;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=COOo3jiK9lz3rMXgTzpbFodohMhA2czPItwQ82+elrw=;
	b=bQFaVW1uRX2HVR53bZ84cWiKsIqBWo72ciak7k08lk82m40VDwUpzVYL1XfVLSdE
	JUYf2Q+Smzow4HogkIHAASadzJPcBckDF0tYa0enXzQcSKhatZxAHMZh789ELm1YIjU
	RMfLfnh1WJ0PdHjyEypz5p2GbA+yd1z1NcAUUGYE=
Received: by mx.zohomail.com with SMTPS id 1753968428292555.3333899104606;
	Thu, 31 Jul 2025 06:27:08 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 1F6881807CE; Thu, 31 Jul 2025 15:27:03 +0200 (CEST)
Date: Thu, 31 Jul 2025 15:27:03 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support, including OTP trim
 adjustments
Message-ID: <iafobb7h4nphjcujm34gig6vwlzfveegwewpayehb4h3tayzgv@bxpdfmhf2hfa>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <14c91ee4-3a09-4ec9-966f-0d563d7c8966@linaro.org>
 <CABjd4YzJeNf0Qq9qFeMcoYQV5erZGUeOpmJynRW88AeL9dJNhQ@mail.gmail.com>
 <3560770.QJadu78ljV@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3560770.QJadu78ljV@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_062728_876147_9C3CAF61 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>, kernel@collabora.com, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Thu, Jul 31, 2025 at 10:11:23AM +0200, Heiko St=FCbner wrote:
> Right now we're in the middle of the merge-window though, so everything
> I apply now, I'd need to rebase onto -rc1 in slightly more than a week,
> invalidating all those nice commit hashes that end up in the "applied" ma=
ils.
> =

> So I'm struggling with myself on every merge window about that.

Your are not supposed to merge anything to your for-next branch
during the merge window anyways. See first sentence of Stephen
Rothwell's mails [0]:

> Please do not add any v6.18 material to your linux-next included
> branches until after v6.17-rc1 has been released.

[0] https://lore.kernel.org/all/20250731133311.1a3e3867@canb.auug.org.au/

Greetings,

-- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
