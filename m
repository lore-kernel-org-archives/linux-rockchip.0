Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE395C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 08:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dontyKgK3QjxlrzGrtJx1ipt+YhYKIadkYqllRxw+Ks=; b=bxohgljskw2iAg
	X28HNr3MnFgcmW48J8LK4c77rO71SMSeIElcCnqrhIOhdzyqSz9XP9+FTOvIPPN0aeAKDTD8Gv2fs
	TgaQstNJ3UzFxVpxtihck+luGxTLbIv/nb6yDYJhzQArgRYdPmz+iOLD+vIMsYiLRnx85P9spJXxP
	QF6dpQIjQqkt8kMdge4F6I3nQNlPizCpsnLJGUBL5cqRd+WcWYtbHy7LRQmq8Cwat9f07D0VwVj7Q
	awI5MjN9atPNd/oBSq853Ho+wzoAwgNsjpwccnWjAMHrOt0jsismYL+28sv+Z1vby9K7h7U/tR+iW
	XNi9PX+7YghkNCuvMVaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSwgX-000tuL-2c; Sat, 12 Mar 2022 08:01:09 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSwgQ-000trw-Cd
 for linux-rockchip@lists.infradead.org; Sat, 12 Mar 2022 08:01:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1647072062; x=1678608062;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uvjzLtZ0QuVOYXq3pO1ebVjYlGHyAzBNRpNQOKxDX9s=;
 b=Dd8zgzbl9+t0glg/oF3yyWytOuANmIgTZ7arPwg/+uIpmEloWjiS6tCR
 XSfKAlkDryJytOm2oztqP35yNe5RCk4LKb73KNuycEtbkJ48o/zZ6WwSA
 5eN1J2sAXT7LAq0l9CnOGJYo68Y1QHd1arO7nHmHX1WAzQKoz33FnxE+R
 K+V/4Tc/YOIC3nHN+X1wm6+Fx3ttBr56RQGEGbHjPRO5gKSWxhyC3Bg4g
 rvyl41Drp0juyga3UQW4IZGfI0zrdFsXto8kZ4hQLZOS/Bn3HdJmRz0HC
 NTzRUj9dygvCT6Ib53pccrrGfn/1tjCPEoiOyjBvVSVa07X1HkisENiuP g==;
X-IronPort-AV: E=Sophos;i="5.90,175,1643644800"; d="scan'208";a="194094073"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2022 16:00:59 +0800
IronPort-SDR: PVLbnSobuwO/IsnkZxWdB6dFvKjntHQV3dkKhH/iBFnStMw7LAA3Q6pyIF7aUOyt5Uv0A5z1zx
 NaOdOCZbd1wmSw2akisfbXRNm7NoU1zD5O8iopZIy0YkoAp6FD4ZDq11XrFhlh+/RZKHsX2FlW
 q6megmRUdESwmxMYjO7TZ+UkvCE5BCuJPJq63k7PKHDE2aIkZe8osTKSV/KWoZQrubHk5x9Ohw
 VV2fWXk5GApgxpDR/nW2LccEv6OpNNe3Hq+aBfvnMPF03KPZAPMl5YcIGKLNu+Kw2xhjBIB8/A
 z416tOM8CWdIMi38Ft3GoX2u
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 23:32:10 -0800
IronPort-SDR: 3FSgye3nSEy2rmeTjuq7WvjXXM1Ydw7huImgAQrujI5PPhqmaXPWV3IlIky2i+G+A2iaHQhY8e
 1LJSWGOCgPdFQ+hq7DR8zF2NFrdARQNfhwrF7LlBmMxk8ddtYmKZKPb3nbeXjX59CZsAbdvcP1
 k8zuoUspKBW/jNxFlXzuH7dvvnBdrtw50b8CoDatl64li9QRO9EUG1+rT+LL5k6dIQ+xCDVEpA
 kA9WZTLXAKp167qCMOR865qHchNhCg6ESEzWBczf0wYllVYh7LQLGrqm7jGNi8YCDxsjtZi/Db
 zjE=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2022 00:01:01 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KFwGg1tC7z1SVp4
 for <linux-rockchip@lists.infradead.org>; Sat, 12 Mar 2022 00:00:59 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1647072058; x=1649664059; bh=uvjzLtZ0QuVOYXq3pO1ebVjYlGHyAzBNRpN
 QOKxDX9s=; b=iexa23W1/b63APqV1nvtJ167i3NiHrMLOssPjIe61Q5MWZCyrZC
 T+x9sfu3duuK4dGzJ/3yFI4znEotyFG+2ctKGCKog6T3KNbxW/iWf11PVkr11nYy
 H3PHQP7E/lr73gpt9IVMqsHP2NYYlcShwK9KcovY3U4FjufSGAXJ/nRq9uMS+Sud
 R8XKypwhjWPNDMBt3AUJr44DaGNeVgPGd8OTXvwVMIo8L6qOtw5dTNYSDgAn8NZB
 AWdLiFRqz/jgad+8/u7f5c2DeYqNuUbRweaCobNWnp8a7Bb8roPTnMJfiOuRaDIS
 DbA1s65d0xHQgdeHrBWi3pCZ1N+aXwEurzA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id rURNaAujo6Wl for <linux-rockchip@lists.infradead.org>;
 Sat, 12 Mar 2022 00:00:58 -0800 (PST)
Received: from [10.225.163.91] (unknown [10.225.163.91])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KFwGb0tYyz1Rvlx;
 Sat, 12 Mar 2022 00:00:54 -0800 (PST)
Message-ID: <05309a59-85cd-2434-6435-6fd956fa75d6@opensource.wdc.com>
Date: Sat, 12 Mar 2022 17:00:53 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v6 0/6] Add sata nodes to rk356x
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220311210357.222830-1-linux@fw-web.de>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220311210357.222830-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220312_000105_885186_AB5A6BD6 
X-CRM114-Status: GOOD (  12.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 3/12/22 06:03, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This Series converts the binding for ahci-platform to yaml and adds
> sata nodes to rockchip rk356x device trees.

Rob,

I saw you took patches 1, 4 and 5. What about the others ? Are you
taking them or should I take them through the ATA tree ?


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
