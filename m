Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B21FC021B3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRQ9zU7WhLNMKHm7DZ3chBZP4qvf2DWCGAkq0f80IXE=; b=OkjAScAgDdU9MR
	vYx9pvzHVd1dC63NN3jM2H08AWTTCGRlb1wMCEY0pDk8gGq0OmF9dn1+1o9ELW0hxGCLcGVVGNU2/
	MK9pRKdC/A1In3k81MXdf8eH0HrA4vXF7nwkUeI7laB6Dk5BmiCHaSTCF7oF2zgJcu5BU3IQuf3dV
	UX5cptSCIGXk5XP5xymB6PInyT7Zn+etKSSEQDcM8tYLAQ8iHShZutWpKaWMBzi+GGO0oh/3Z+AxC
	DdRlkthin63MiFQJJau2GF6XTwKtT6KIwCvhVGA93k08UwaQN719VlhVgojDhNmK/oJZ70qqTJJcX
	iHfq9N77AOi94hvzjgkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl6FU-00000000xMC-0ttE;
	Thu, 20 Feb 2025 13:05:52 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl63W-00000000tvv-22TN
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 12:53:31 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740055996; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=R/qQr7wWyrdtX7UBgfy9V3OpdGNSna/00YuGzPVDeycnnG+3IIHgvZ9MtC0mqCetl/Qwhpx15Uc8EnFyE0nySqceeKstXDdDP6UvCwRxxpXu+paluaPOpgz2mcb+oW5nv9XbnVVfjJfKVQ8I7M7g6XaQKmFPlYqbENfMwt07UXk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740055996; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=f67Esv9H1xTt8XSor73BkW+OmrH1KkQDE3TlbweM+xI=; 
	b=UQRVSWrrO99KOa93GwcGWfosO0X7fYAfOyxCM8btbeB88kGwggiKsQT+zimYi4sXr30G431vC7N6BP4KGgCcu79fqgAN/MGJtORIaCvx9A/wmYNZZR/VkZSlg5GbeVJca9keMpaWYK2C/T8y43lY0XzQrWPoaddT8Ax8yGJ68+s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740055996;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=f67Esv9H1xTt8XSor73BkW+OmrH1KkQDE3TlbweM+xI=;
	b=RoeWHZCO2jmELKTJCR9BEryn4grgVyBkwSjDGE1Wp3ZsgYq7iEV+8MA1M+v07m6+
	gUPpj2i6ZVVVCcJqAEGL/qVFzdedCT+sqM+ZqVKxpZntGGekJBBAz2/4a/ZOoAPJ406
	kXXE1vKmqGb/rqVDZ7ITFQqXuoeV5S/b/xio4VD4=
Received: by mx.zohomail.com with SMTPS id 1740055994655425.8638948132052;
	Thu, 20 Feb 2025 04:53:14 -0800 (PST)
Message-ID: <e3c9d3b4-cf78-473e-8520-79dbf932fbe1@collabora.com>
Date: Thu, 20 Feb 2025 15:53:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250218184439.28648-1-dmitry.osipenko@collabora.com>
 <20250218184439.28648-5-dmitry.osipenko@collabora.com>
 <f32a0011-1653-48dd-9061-047f9009310b@xs4all.nl>
 <3fcdbd35-9ff2-4159-8076-98eefd6ed8c7@collabora.com>
 <f188dd6f-c98e-4a70-a1f0-3d205b924b78@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <f188dd6f-c98e-4a70-a1f0-3d205b924b78@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_045330_598732_E9C811A6 
X-CRM114-Status: UNSURE (   5.71  )
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

On 2/20/25 10:03, Hans Verkuil wrote:
>> Good catch. Hardware supports 4 EDID blocks, will change in v8.
> Ah, good. Make sure you test this, both writing 4 blocks to it and read it
> from a transmitter. With v4l2-ctl --set-edid type=displayport-with-cta861
> sets 3 blocks, and type=hdmi-4k-600mhz-with-displayid sets 4 blocks. So test
> with both variants.

Tested it yesterday with reading 4 blocks from transmitter, worked fine.

The HPD change also works well with the preliminary testing.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
