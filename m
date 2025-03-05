Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1133C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETtfBgChQXuKPKTRUZ9IZGDZgwGXHcqzI0PMP0/Cw2E=; b=KTrhVECvC6S3K4
	dT1tFRBi7KYFuumdwYpk1Iz3bVcsDlDYzn6+CjA3pSQz+DY2Q8vvGaMMfDEvBBTV+9rqaoi/AEPhv
	xIhZG4mt30Vv8KFoQhWuR1PqQ6nRBN5DKP4c5fvBlTigduuMEiWvIdbiuU7mrHHGLJxNTx0isiXtZ
	BHpH61MkC2zUEu60t7tWagj3dKRHlCA1zZPHg1XL+Im2YZVAMU3HlaioYNjANs4PUTPqEA4oLdm6J
	Rf7nLYOojnpnS22RBYLJKL+6jBhsxv+fy2ybaMxvzNb4vRvw9nVYN9SQRyopgFvMoqCj7EpO/DILj
	xolU+n99cyHAnzl9s2Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpnFz-00000007umm-3DOK;
	Wed, 05 Mar 2025 11:49:47 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmOj-00000007lKW-00cr
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 10:54:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741172021; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BiJghRD32/9FYVLs2P+J6fdCaN/zWK2c6LsW9GDhkmnrTrn1F8t+JSlVmTEu5YcwX+0dg5OkcD8GstwF2BLIHiCLWE90e6j2x8ntlKYRPLd6iHeY+EIvfdTBwlkRkM2LbFa1oHEBhZQNlVrvEuknvYR27ChTUxB+c2iJRA6s1qM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741172021; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dRMz26do/txZBi10Mcoz5fXmESW0PSVQ9DKG49HFVjY=; 
	b=dC4JJlkhKTXyRwbwtv3Gvyx0h1v3ETJftoZo6tjE2HwirDOxjj2U6uInf1BfNELhHaTpgYaw4ME+GSG3mg3GYASzUFJuk2SNH3WN/hWlfXhhq+joPk2QFVP9+Qr7Evcf9xh3JD5TFWlr6tzuHk1YaxJAEX52zqcCUEkz5fNpQY0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741172021;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dRMz26do/txZBi10Mcoz5fXmESW0PSVQ9DKG49HFVjY=;
	b=NER7FOobCE625v+5FstETaN/ynlDtm8YWSnCb1UekBY6fC6tzgxYHiZE4muEc6xC
	KAar5OSGfLCjt1BOtWqzI9ENXU2A1Y5/n54JIsxY4RjWhkWwagN0jDzC7z0ecxgvEmm
	nzuYnJZMkz4j2YRWFcFab0lOoGOg6eXYz9MLZzL8=
Received: by mx.zohomail.com with SMTPS id 1741172020269320.1572108278864;
	Wed, 5 Mar 2025 02:53:40 -0800 (PST)
Message-ID: <077b7bbb-8ef9-4dcd-9b91-90af4653851b@collabora.com>
Date: Wed, 5 Mar 2025 13:53:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/6] Add Synopsys DesignWare HDMI RX Controller
To: Tim Surber <me@timsurber.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
 <78ff36f6-01a7-4df4-b653-c4509fb93af4@timsurber.de>
 <1039aca7-89b9-44ef-9775-e7852e956362@timsurber.de>
 <9b4b1e65-127d-422b-a359-a1d8e25652f9@xs4all.nl>
 <88054acf-3051-414c-aef7-4c0f085d5182@collabora.com>
 <47e022f4-1c1b-43c4-8f6c-bc1ff23ad39f@collabora.com>
 <e0e144be-5cf9-4a79-a602-2ab2b7cd9aa1@timsurber.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <e0e144be-5cf9-4a79-a602-2ab2b7cd9aa1@timsurber.de>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_025445_112554_C757DCAD 
X-CRM114-Status: UNSURE (   8.01  )
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

On 3/5/25 13:41, Tim Surber wrote:
> Hi,
> 
> so the 4:4:4 issue was just a gstreamer bug and it worked when I applied
> an experimental fix [1].
> 
> So everything works for me using the default EDID now.
> 
> Tested-by: Tim Surber <me@timsurber.de>
> 
> [1]: https://gitlab.freedesktop.org/gstreamer/gstreamer/-/
> merge_requests/8534

Awesome! Glad this has been resolved, thanks for the testing.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
