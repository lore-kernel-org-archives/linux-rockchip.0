Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC919C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 12:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4XizLDKpqHtrmiKasyAnaFiuNNfNhMp2dQgKpD1TQME=; b=Q0OOxs3hBr/pFjDHMo8ZxtWwhY
	4SclkrnoWSDDUfPNXaMIFKAmqw2ZUeBw6Bk/JPqEoIiHfDkIaBwFONmFFvC6ZrNe32OViUsBnnxYT
	gz7EprsFrE/rmDi27gSnl66OyeDfwwr3RuxBnZjtXyGyhMXbRlaveTR6pFMb0hs7SMPG/KUVKiN5W
	/mIjO1EinbiN0+Xdi5KJ6t3Jho1Rpax6ruLxPJVtWhqy9t+gN07sGtXOD55z5E9mTAhrQvbZHJl12
	XLkbrlQw4DfGgJeozAvGj/t+MvvS674Nom5z9HBk5Oes/fSUtzfJNONOiOYqQBb3a3IZ8gsXamyhR
	Orb0Dgvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQp6I-00CfRg-AN; Wed, 24 Aug 2022 12:03:14 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQp6E-00CfN6-JG
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 12:03:12 +0000
Message-ID: <8196e3a7-8ab7-0577-6557-12334ebf8a4b@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1661342584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v37ScZl081Z1xIVBiJ5FdZbzgYPvnHs8IdtyEy/iojI=;
	b=X3S07cd/QLVtlFze9hXvVMkiSFI9aQ+cz8MqnQNv0gmcbyhGaemL8QESyblEzdTro7AufQ
	JmzUke/bZU7IWa7omfzrzRp/47Ks5iPcvTW/vIc2Tv9OdFkAJypWEisWQDscxGTFg2wJlo
	w3z5vpvP0OhJjxMhts3C3mLNOssXEgCzr7CCb7ffe+iEkPIRiYkbrhPxW1aRWhb4vTcDS2
	8Wz4L3QIrA2J08rDU/rXWnY3NsuLx9W7WcddagHAyHIxOEuU7qhVn3L3ylLILECWgE/oHl
	mIbg5kTah6bWHHgE8Sp0n/moVCRgS8Jrd6Ohp3yZBGSvPk0vhGtXabvanfKCmA==
Date: Wed, 24 Aug 2022 14:03:02 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
 <ef70b8b7-c1ff-a6b9-077b-83ea48c66c24@wolfvision.net>
 <20220824071022.GP17485@pengutronix.de>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220824071022.GP17485@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_050311_154915_2EB8B61E 
X-CRM114-Status: GOOD (  12.63  )
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

Hi Sasha.

Great to see work being done to enable HiDPI support in rockchip-drm.

Would it be possible to add 2k/1440p too or is it included in this patch?

Den 24.08.2022 kl. 09.10 skrev Sascha Hauer:
> On Wed, Aug 24, 2022 at 07:43:03AM +0200, Michael Riesch wrote:
>> Hi Sascha,
>>
>> Can you Cc: linux-rockchip list to get more feedback?
> Yes, will do that next time.
>
>> On 8/22/22 17:20, Sascha Hauer wrote:
>>> This series adds support for 4k@30 to the rockchip HDMI controller. This
>>> has been tested on a rk3568 rock3a board. It should be possible to add
>>> 4k@60 support the same way, but it doesn't work for me, so let's add
>>> 4k@30 as a first step.
>>>
>>> Sascha
>>>
>>> Sascha Hauer (2):
>>>    drm/rockchip: dw_hdmi: relax mode_valid hook
>>>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>> Great stuff, thanks!
>>
>> On a Radxa ROCK3 Model A with a HP 27f 4k monitor
>>
>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Thanks
>
> Sascha
>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
