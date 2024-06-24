Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E087CC30653
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 21:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB3beFp8+uR4inXLM3n5Md3O3n8sPKEMvmc4vYf0ahE=; b=dm95UqeuuCcVFV
	gi/o7nc/o9e+oEvnw4rO6RjnmTK1ZTm39iMJFci7CQ01po9nVC+ESrXYmNATFmvqHSDs54c4aA7Vh
	CLv+yEuHjBQ+5t/np7awuAGky/oUm5/+ICa4CryAL8YsEGJBE1niEG3tRpwIYdal1k4tysKb/vOUz
	lRmqueW2v27VqlXLvMxaSfakoqGOOM8j1U86jvy7A4EDS3y5+SYVY9LILiIxjrJOvwx/TXPAAL5Lk
	xHZGdRi72weEyJ+lHTLEU7J9VzAh8ahIl4Tp1Pfujtf78ya356Fow7L1i4zuxayJXD60KryEbWd1s
	eCe6lcVK8X7dy2NPWUYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLrHh-00000000iHw-1hTE;
	Mon, 24 Jun 2024 21:31:33 +0000
Received: from smtpbg156.qq.com ([15.184.82.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLrHc-00000000iGt-2QJf
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 21:31:31 +0000
X-QQ-mid: bizesmtp85t1719264556togk5jli
X-QQ-Originating-IP: KDGt2dWE5y+1Ic10dkzvyxau3BTmxqdwpetv6MftoXA=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 25 Jun 2024 05:29:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14516342982163703582
Message-ID: <A160F02429E3991F+93c09bed-e66a-445b-a235-df6c6d6ea9db@radxa.com>
Date: Tue, 25 Jun 2024 06:29:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for
 Radxa ROCK 3C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
References: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
 <20240624100019.80529-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240624100019.80529-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_143129_471896_02F49913 
X-CRM114-Status: UNSURE (   7.65  )
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

On 6/24/24 19:00, Chukun Pan wrote:
> Hi,
>> I see, I'll remove fixes tag in v2.
>> btw, is this change reasonable(acceptable)?
> 
> I think there's no problem and it's acceptable. It would be better
> if you could give examples of flash chips that might be used.

here is a list of my board:

  ROCK 5A: MXIC (SPI flash module, no schematic)
  ROCK 5B: MXIC (XTX in schematic)
  ROCK 3A: MXIC (Winbond in schematic)
  ROCK 3B: MXIC (Winbond in schematic)
  ROCK 3C: GigaDevice (same as schematic)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
