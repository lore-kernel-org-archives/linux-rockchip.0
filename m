Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AC5ECAC5B8
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVgO6vQDw5MZv2p4wzoX56c6TndoIs/2y/rVdb8vDFA=; b=KPTO0SsYjSGWIO
	kEiZ0WW/btIXRe0hbhB5FiURKqeF3MRk8MoClsXf1eDIeUfNXaQGBZicw9GqmA5dOojRF5Lk+OnqU
	9BeT9O1U/7vFg76GiR9MBtgSpeBVPkrjxW6qdokEwKHH8OlZddGyeqQYOGx61l3eifzsbhiIpbAXq
	TPwkkISJyD6uvXnHAdrnTBtfONtaU+Ef3fHXY62voDG5Tqhj6lJ7zCuvOOmOdWbGUVly0jWx3TM69
	+K0YM09dLNoKuJGc6VBXNfHwW6SnM/mLvdeKisHS8/fZ6OtnJZKvzSsXGA+9XKdDIKxlDJRBn7WIg
	Q1Cc7usmoWSGiJu4bhuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4Jne-0000000AZF0-0Qva;
	Thu, 02 Oct 2025 13:56:50 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4Jnc-0000000AZEe-1hiy
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Oct 2025 13:56:49 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759413397; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HvKELj6L309KmxqweKIZPDtJYgI2Rmd9dAkfzWFIAydZrAc4ixyXGrG7o9CMbefRCnVtlMaEwnJwRAPNMgdkl6TNRZTdpL07/MHt7gKIVvMPAnUPDWQSIHDKpZIlZNg74DJ0JllNz0yvGx/IPdxrBlpuUlmuNAnGeAnvowhEJUI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759413397; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+RokhR3NYc9QVJTPoxwDFl0IYtcx2jvPruZ0+Di9ZLM=; 
	b=lDy6DLQHdTPs6vd8oOyjHLMUvxiUn333gnJj1oVtKMPTbg06EQDQvOpbqydC36q13aKUNkMhglySy5JtLaQ9xgdEPVWnVTa97/PdIRva+4UahyRzm6C9ky/jr+72vt02xVy388k3hM6aLVrRlnuCSJbKGIyhc4jRaHCCz3vnobY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759413397;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=+RokhR3NYc9QVJTPoxwDFl0IYtcx2jvPruZ0+Di9ZLM=;
	b=WC+GgCRMRaOLDhTp55x40MoTelBoXsit3/byUnSdz2z+CqBkOaR5dhJmAvmQo52F
	AerHXtZLzRl0MIIjXDIzOREhaPUc/VqF/BANPjI2umbbXpw3XsG2EmxRghT3me6vh14
	ZCt4wBjgIkM8gNMwqY2y5JXJvyScmZnDldDrQZF4=
Received: by mx.zohomail.com with SMTPS id 1759413396392655.4400354007636;
	Thu, 2 Oct 2025 06:56:36 -0700 (PDT)
Message-ID: <90043066-055d-43a1-97c9-dee118b8a101@collabora.com>
Date: Thu, 2 Oct 2025 16:56:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] media: synopsys: hdmirx: Detect broken interrupt
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com, kernel@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251001175044.502393-1-dmitry.osipenko@collabora.com>
 <do3p4ncc6issxwqam3oeo54xtoi6jvw7maeprdbfkdn3b3aabr@ilwktxqyf4ap>
 <bb66bc81-2b20-48bb-87bd-6c34b35f4cd8@collabora.com>
Content-Language: en-US
In-Reply-To: <bb66bc81-2b20-48bb-87bd-6c34b35f4cd8@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_065648_535626_212A3A77 
X-CRM114-Status: GOOD (  12.14  )
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

On 10/2/25 16:36, Dmitry Osipenko wrote:
> Hi,
> 
> On 10/2/25 16:18, Sebastian Reichel wrote:
>>> +	*val = status & PHYCREG_CR_PARA_RD_DATA_MASK;
>>> +
>>> +	return 0;
>>> +}
>> Do you expect this to be used in other places in the driver? In that
>> case there should probably be some locking, since the hardware interface
>> obviously cannot handle concurrency. Otherwise maybe add a comment,
>> that the function may not be called if concurrency is possible?
> 
> Don't expect this function to be used in other places and haven't added
> locking on purpose to keep the code cleaner. Will add the comment.
> 
> Thanks for all suggestions.
> 

On a second thought, this would be a case where the guard() thingy would
be useful and help keeping code clean, will use it in v2.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
