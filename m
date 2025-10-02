Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1936DCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 13:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrIClobYifuYQnKEPmzoypowm80agEDoTUF+4U154dw=; b=K8vmzy4nnsK6GE
	bIH22STyEw0nPNUeaoL3Nax0Be6B2hT6j6EjubWyQeZNd+Ewc4sKd5aRp3spPXLhte9/25Wpqri8k
	rLUqJqcHRpP193t/JI4gEwuxJDYcHOQmYaJHQR7C0yj+9ny5byAAIeg0hOpyMjxl3wQ3lx8cY2U3z
	X5rIKywX78zHpdccU+4ZVdEETwDod7//7qpjJiKasObjYif1P50VObMU5M8AACg8BxJTFl8itjTIc
	fFd2/g37JN9BDG/GsQChzjHtAEs4e0ecKbZAYvHn7W3OcrbbOS4qF/qEG/iFSsnZMzoY+NlGe18Fm
	68qo7e78oKPt2fyRwvPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4JTr-0000000AXzo-339m;
	Thu, 02 Oct 2025 13:36:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4JTo-0000000AXzV-49aJ
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Oct 2025 13:36:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759412170; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kqUIds6O1TiQ+WdAH9jvW7Z64Jr2CMZV/pido18x7cmJSd5Zm5552ediXflMgRoySHIoIFz7YRLb2yfD1QUWZ989nhTKFNZuk8+u/sCtGFvxTTrPm8ikKnT99U5Fq6bCIpwhFBUzTaurQ50sft0plSGf3vlwx4tzefu+XSmrs9E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759412170; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dtSH7DMz3FFMPjGi9FtB/ixalkTfGUEAj0h124xRoog=; 
	b=SzB44dS1gjxhZmpYJ4t+HTI6leH/9Z77F4ZLH8V7N8lsDMcwsArR7PohkJ6o4pRj307dl6A/CyoFFEGcu8YcruFIhRs9mgoUfhzvDMcGjhkOBezHNcZS8lVyycldLUf8djHgZHSrugdmLRTIG0hwcppGuogHKwsEL8+/tnwBEbI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759412170;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dtSH7DMz3FFMPjGi9FtB/ixalkTfGUEAj0h124xRoog=;
	b=Eq3CemXEpZVjh8awik3RWGFgcivKMwIT7ghfdMMVIiiR7JeKYPfwQKVflZXET/X3
	xNckTwiwvc0Oj+LSPN678eKF+qkDFCKn91hA55ugIKJ21E7okQJHgIHV1exRC1k2UMK
	2CbVS4P9eSmRyrADSB+K25GQNx8PnNutCoyrQ9Sw=
Received: by mx.zohomail.com with SMTPS id 1759412168085227.19275215267555;
	Thu, 2 Oct 2025 06:36:08 -0700 (PDT)
Message-ID: <bb66bc81-2b20-48bb-87bd-6c34b35f4cd8@collabora.com>
Date: Thu, 2 Oct 2025 16:36:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] media: synopsys: hdmirx: Detect broken interrupt
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com, kernel@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251001175044.502393-1-dmitry.osipenko@collabora.com>
 <do3p4ncc6issxwqam3oeo54xtoi6jvw7maeprdbfkdn3b3aabr@ilwktxqyf4ap>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <do3p4ncc6issxwqam3oeo54xtoi6jvw7maeprdbfkdn3b3aabr@ilwktxqyf4ap>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_063621_108308_EEE90D0B 
X-CRM114-Status: UNSURE (   9.70  )
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

Hi,

On 10/2/25 16:18, Sebastian Reichel wrote:
>> +	*val = status & PHYCREG_CR_PARA_RD_DATA_MASK;
>> +
>> +	return 0;
>> +}
> Do you expect this to be used in other places in the driver? In that
> case there should probably be some locking, since the hardware interface
> obviously cannot handle concurrency. Otherwise maybe add a comment,
> that the function may not be called if concurrency is possible?

Don't expect this function to be used in other places and haven't added
locking on purpose to keep the code cleaner. Will add the comment.

Thanks for all suggestions.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
