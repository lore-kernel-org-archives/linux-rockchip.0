Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB3BC77B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 May 2023 00:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R65N4R3Z+SqMk9hzC94CeZ39v9nxOWvzBS77jFauQVA=; b=TIc0XBqDYd+ujO
	Eq8poA3I/NHV3O5Xs6WqCrBXr5TnwBJq0PP0NniTclxMOleu/2po83pE3tn7uC9YNRRaHP4NQNvpy
	EkersZhr3gXUvCH2WlzoaXjRFSaq/bNz8Mjdo4GWQQENjfFN12cCoMSzKL90sefKmsySJ5pO/U1SV
	8KIyUsuciYi2pvtOU7TPU7FzFujaTLht1mqayMrXXySff4fiVNQo8XnpwFr1JU7Y4q1UqHBGJbwSp
	kxuxeuDVjMIv8houjAQj3OcW7HSraUkhruzlYoC01LNPYsbYMTDVF7vjNdwmlONN/CzEaocz6FHb2
	B5E1Zv9fwnl79GGoLslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2LXn-000WgU-2t;
	Fri, 26 May 2023 00:42:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2LXl-000WfF-0Z;
	Fri, 26 May 2023 00:42:58 +0000
Received: from [192.168.2.2] (109-252-147-95.dynamic.spd-mgts.ru [109.252.147.95])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E80A466056D7;
	Fri, 26 May 2023 01:42:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685061772;
	bh=b7KTbM4WhfYXB/uJQOVCQcF+/n4UsmItxYts7ak+544=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X9p955qco/4LsnrR3Fs9iBBQ6k5LF4ildGWZENBsZXu7Beb5V7+FxMT/CrwVYPME9
	 oPadLycKEEy3ZrbSqSqYEhnaYEnJT61A49IhMckbd0qrO6NCc0r1CB/rdvBbFcNRj1
	 Qw26UXPNiRkzkKaoKikk76Y8Zhy0GoHC9x/cX5ju6UZ4YCq/+nuoF+rldkSK/PQEvA
	 SCwzyj/kA3M+N3OgjLSZ2o60bi6dyk7PPG8NPwBPkl3+8h1su6sL90EhEuOGbKcK1j
	 rDOj7viXyrovhz1l+tmnsD4MkxXOas9L7mrz6t+TMyEj/6LS3YCE8JZNKGF7ARTKxN
	 H3Now5JbFoTKw==
Message-ID: <a7e0d4f0-a497-8697-e108-5247e11abc41@collabora.com>
Date: Fri, 26 May 2023 03:42:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 3/8] iio: adc: rockchip_saradc: Make use of
 devm_clk_get_enabled
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
 <20230525212712.255406-4-shreeya.patel@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20230525212712.255406-4-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_174257_364409_AB240143 
X-CRM114-Status: UNSURE (   7.87  )
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

On 5/26/23 00:27, Shreeya Patel wrote:
> @@ -600,8 +560,6 @@ static int rockchip_saradc_suspend(struct device *dev)
>  	struct iio_dev *indio_dev = dev_get_drvdata(dev);
>  	struct rockchip_saradc *info = iio_priv(indio_dev);
>  
> -	clk_disable_unprepare(info->clk);
> -	clk_disable_unprepare(info->pclk);
>  	regulator_disable(info->vref);

Why clocks need to be enabled during suspend?

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
