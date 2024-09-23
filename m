Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 678D7CF9C71
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 22:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS5Z9Y9QMObAftoCg3PPHPKxo5l6dNoo75bicyM4Co4=; b=lV/hsnEkwoL7a5
	bC8BZ8WITCjBHHJrLbHwz/WdL96GdNia8O+KLxN2FSj05XTisnisAId1BpF4o9MRDlJfvV2ONZGg+
	p+Vdlt683rRoMSkWiaSmq5B48HMziy4qdZ4s1JPRTvq5Pym4Wx1TZWZaIfPo1kSgiMWSNreb7rEEo
	ZQuKv11jqlXuy4n5wwt9gbN/hcLC36M/8ZPaoUJCOgx7kAGboa2mmKZe7I4MU853P36alopYuPK41
	+CHWVrX2bP6z5KI3vkkHNc4A4T8tI/uSofoRdrGPHW3XRinoNXPyXiCqdbS4Z5VxP4XbOjyjD5y+D
	5w7ogAFfSaCbY4yac0/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssrgs-00000000cfu-0sHY;
	Mon, 23 Sep 2024 22:37:58 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssrfi-00000000cQR-3ZZV;
	Mon, 23 Sep 2024 22:36:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1727130994; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=etfvqn6nE9bSw12FIbfJjgCORXBDGGvV9maXWJaQnkhh0rxOqHDnHlz7YIqv4BYx7SoLUvprqJVEcqHmzlYTkjJDJ+yUP208bEq/Kuvqt5+V7HxY+7KXSEGcNGRtfX2l3fsAlfyJ0PqnO0UpzLDWbSsRY6mUoAsfS6I1hiABPrQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1727130994; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+t7REgL0vRbD5ozbKxnGHX+D3ka+R93Qijxfle7UDkw=; 
	b=caAMCQASvh6dv59R7g9ZGrEmIYXI4sXujsjyPHqcmiT1F8cQr3uPVKefSzqrcbFD5kjc8FmeRvMhlqCVfD5L3imxGm9MZoOfgjWPVXI1otXetnaa+V9Kto7NFzzI7VcuRUj/SfewxIapq7Yb+LUiEfiQWdSJIRqthqp4mdfXRfM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1727130994;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=+t7REgL0vRbD5ozbKxnGHX+D3ka+R93Qijxfle7UDkw=;
	b=dz4+1e7/rELveWVtwg4DVhx47h7EuwGhj6wtaSdKerqaaZFFwgcgicUrFHJtGFrN
	iUeAOyKrKgGoYWl+8U5FsfXsVwWlWAST8tkJPRcAIMaiSUFqKe7SBOT+SX6yB6LNNMw
	qamG/u3aI9vslBmysAeaBAe2+ochwSJFpcC5UBX4=
Received: by mx.zohomail.com with SMTPS id 1727130994054161.20850860095402;
	Mon, 23 Sep 2024 15:36:34 -0700 (PDT)
Message-ID: <40099a01-cac2-4b65-bb96-3dfdb106a4eb@collabora.com>
Date: Tue, 24 Sep 2024 01:36:27 +0300
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
X-CRM114-CacheID: sfid-20240923_153646_975594_AD92B1C3 
X-CRM114-Status: UNSURE (   7.34  )
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
>> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS11);
>> +	field_type = (val & HDMIRX_TYPE_MASK) >> 7;
>> +	hdmirx_get_pix_fmt(hdmirx_dev);
> Hold on, this changes the pixel format based on the detected video format.
> Does that mean this hardware does not have a colorspace conversion block?
> All the HDMI receiver hardware I have seen always had a CSC matrix and
> could convert between 4:4:4, 4:2:2 and 4:2:0.

TRM doesn't mention that CSC is supported.

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
