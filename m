Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A589CF9C6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 22:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5Hn8r2TkVMNCmJNIyghOlzsN6FfqXjO3mMIihZfPaM=; b=q0/NWSeLLH9HeF
	hmKfrhXq5DNhbhGXSzd6tZEmx+UGvxs4CLKsWokONdMomnWtEmPKjsP7784amWxwn1M+6d0A+pvEw
	VfgW2WNB4bXKVVB/LQOVKkb7zepgQpYOovpINhvNW5GRBaNS+qyHqUyKLOyHdqu7jVbHJBT7IWSyt
	OGrfGJFwF4nAeyqe6t7mYqiG1Imh6X4hgAaAf9Qw9NwsB2JPeq0CrCVQlZj9uQ0v1RNNoPvFVzXKA
	6g7eP3EAyJZ2jxFrDKHSroazo82XdL7nbs1FNZtEiMA5mTOgtUYTCjm4tlF1UaOWNh+/QEqo+4fFa
	XXiWWnZCyNjpJxy/mmsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssrVN-00000000anL-1nQ7;
	Mon, 23 Sep 2024 22:26:05 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssrU8-00000000aZD-3j9X;
	Mon, 23 Sep 2024 22:24:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1727130273; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YfYNJdMgp/y1uP6d8OafGpncvOgQDBktKmhw/iFx6zKap/RvxnMc38P54Qum1I6bBqHHU38aERxlvKhWiiCz0nQkP8aNQeoAHMSczYlVplQVY3nlWFF3TWVtcsQ/ncNbtmESt46WJNEzNICkwsR0k6YX5/5axbj35HW8q4FTols=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1727130273; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1r2+YqfMcD9QvzdF/0v6a42z5qBEA9M5RklZEc7Zddk=; 
	b=NwJ16BUcMQ8fcywQ6N0XX9ONOjdjym4UIzG9ftA1QF/wvRuF2msBg0lfyWcKZQ4w9FMvjA8YnMiostY/mDOO/q90qNebvQ4lb9ibsRE4aoUKMirGghqH4m3Gqp4G6pO9GxpyXzBDxlxfLxhtslsclGixh8mnruP3D2gjWU080GE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1727130273;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1r2+YqfMcD9QvzdF/0v6a42z5qBEA9M5RklZEc7Zddk=;
	b=H9W4lYj923wdFyT39nL9dzqsqpqPxWLufsdajfpDh5o/hv1Y/M3ScXCk/pfSE3vf
	nrmGXPIyz3e80r4VwzM3SmykO1RW3K59gs6JCnx4czERQPPAER+H0O2CopPn+BFGK6t
	P9eT+VuS96oN+OW/6+pttPe8tNXhlXq8fUGJJf5c=
Received: by mx.zohomail.com with SMTPS id 1727130270973625.9553539455802;
	Mon, 23 Sep 2024 15:24:30 -0700 (PDT)
Message-ID: <8239ae11-12a7-49fd-b78e-c906f3a468de@collabora.com>
Date: Tue, 24 Sep 2024 01:24:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] media: platform: synopsys: Add support for hdmi
 input driver
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, heiko@sntech.de,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-5-shreeya.patel@collabora.com>
 <c5b9be4d-16ee-45f7-b980-d2e0e4b3ef23@xs4all.nl>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <c5b9be4d-16ee-45f7-b980-d2e0e4b3ef23@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_152449_024320_690A09C9 
X-CRM114-Status: UNSURE (   6.71  )
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

On 7/23/24 11:48, Hans Verkuil wrote:
>> +static u8 edid_init_data_340M[] = {
> This should be under #ifdef CONFIG_HDMIRX_LOAD_DEFAULT_EDID, since there is
> no point to have this if you are not using it.

No need to use #ifdef since EDID array will be compiled out at a build
time. Kernel doesn't support old compilers that can't eliminate dead code.

#ifdef makes code less readable and adds requirement to build-test all
variants with/without the #ifdef, we don't want either of these.

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
