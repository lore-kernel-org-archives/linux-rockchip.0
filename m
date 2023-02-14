Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F9B9C61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 23:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZV2aMcZgJzug9aU01eJkQZra9bkNnPQ9jLLaxQovIE=; b=ssnVTiZcvvar8D
	KCjh0iP9YpKmZ2/E9qxHIikCy4aGX0KkCckEkiUMiTxAqhthww8aWZz2nRg0pH4/1kL9/+cqc99fu
	IKPOUqDGT1g24BNOJd2ylTvWha3j46ukG1zgQX+WyzTmGtwDDXhXsz+Y4DShGATR2DrMeQISQHThk
	sKNj4/mMBFY7T9njJP2YcW9GEVssPlvfv+XaG2wH64pZXS+fH6f8rAfSYuHitfJc4Hl1bCbOYSgwY
	X453anPlD1q8aeZyHmWPgU6LeMUt+ib0+SIKqsqcPdTqnCxjnTL4q7ml6ABbt2DtVB9xUy7rkmpgN
	Hfk69Y8U5lGocNJzDzNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS5At-003xkO-Ml; Tue, 14 Feb 2023 23:57:27 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS5Aq-003xiQ-Qp
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 23:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676419044; x=1707955044;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=kzhGYJXOf306NmlEn5opNfn1hoJ34kE37xo2DHXERFc=;
  b=Wf4Y64Jg6Yc+EVSHKZiLhJd/7gN7QXXTKL1qhia/pmI5dLHjB4QX8g/w
   DqmJk0so+bkrhCRhpbWI5U8yf1FkzQIDHz4oAU3jpIFMnUHAznPHJyhVU
   ohGUXlx57bdt+KAE35wJgqvBTA4qn1dQHcO2Vk5KsCWtkh+Ov5RairBro
   qGPBQjMF3s4xkrdd+hq1Ht6/QrVDO4eM75c21uqr893QY7rUK8zPLOs/t
   k0dan1+pKCn5Ko+PzJgGHgFDFrm+treJpwGTYjLh9RWNwTQSf7ZQN3S1y
   6GTO2J/W2KCFgi+Trro+vP27EJw2wgGxqa4koCouq5KXbXU+7qxceHXDr
   A==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223337676"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 07:57:21 +0800
IronPort-SDR: wpkpznQ5EknyWEwsRqhL27eIeTtxyMcXQd7+S3+J3rQSkmT4+iWKY3CVU2xAA6xYKp7/JvGI4F
 PsDwQLnnmaVp54h8QV/rKAkulVrLaf3HIPwbKNRK+P4CGtiMhHAIz9uCXTUP3yeF80DqSazlXi
 jWTrdh6xTquTL68D8drRrz+d1KjQ/yQW4GN1pNd5JMN4uN6axWeQY3NZGiHBMh/zD70frcS7ao
 LG73p8INnr4lgU+IUYSoWXZ7b822pzSwMPsZm5M0FF72eNoWqBWvKAJSNFbNgMw5Dg79fBh3Rg
 8qA=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:14:28 -0800
IronPort-SDR: NVme7NQId/46GJiuo3dF93UQirksTesd4scRTkZla6K0rpzGcqOCaHthbO/CaFoIBRZWvzqFTh
 9qqGWEV7IzSzl9yjkEQlaXD438uSHEczpR+jEOREKIwMwcSLp6jPDorF4Mcv+q5HpWqWO4DviT
 s8gAL4u4mSHBGWslL8ge/hHxHCx5O60xIyAbgZQFWYgS16gDQF2qyr9LzCxAdqeT9cSawuXQkN
 /1OW+jmUi1gKVg4de7DR8qSlStanUWi9PmSCQUi03IcwzQK30TgO2rHTvBjGHaF18oRO3mDD1n
 DEI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:57:22 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGdRj0HyWz1RwtC
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 15:57:21 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676419040; x=1679011041; bh=kzhGYJXOf306NmlEn5opNfn1hoJ34kE37xo
	2DHXERFc=; b=qtkNz2Wpym57AeM1b+K40tUtO/VGjSmC/pa1V1esQDXbhLvdyNK
	KCxWZ30JUzdT2KyvLu/W4vsdZdU8LQZqmUsA+OsmmypSyNYILWQ+qHV5aRo3I8hk
	nsevRGb0wKA29ZVCKMO9SdPSd7yX77sEqAdQTQJTP5Y6etLUINbTCfzXs74T+5he
	nDk70r765uIM5/Wtorgc8G7qMvfSQVI1QfYPkAd6prG3s7FC6XnHLHP8nsEGHEDa
	8p344hbSMQfLiezuVqdxOquyLD21qHSGp35EJj34jZsB7HBozt47ZybM1X9n7NHt
	F9QRJy9witvlnydLDUtHB1YEzkGAnnYc1Og==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id p8FTkWp301LJ for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 15:57:20 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGdRd292Tz1RvLy;
	Tue, 14 Feb 2023 15:57:17 -0800 (PST)
Message-ID: <b6a27883-5d79-1125-70a7-ba987b397bcc@opensource.wdc.com>
Date: Wed, 15 Feb 2023 08:57:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/9] PCI: rockchip: Write PCI Device ID to correct
 register
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-3-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-3-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_155724_963112_9EAC732D 
X-CRM114-Status: GOOD (  14.56  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> Write PCI Device ID (DID) to the correct register. The Device ID was not
> updated through the correct register. Device ID was written to a read-only
> register and therefore did not work. The Device ID is now set through the
> correct register. This is documented in the RK3399 TRM section 17.6.6.1.1
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
