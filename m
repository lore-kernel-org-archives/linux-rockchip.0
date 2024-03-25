Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF0CC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 12:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dw+N7hIoKOEXPRJPA8YeGbN4j8AGhuEaHqcPkDFtW0=; b=ML+R5Dva44sIEE
	OIvhk8aunegOT+puCSRuw5T0+aikaL8QuOLo0zB6qoHsp0Izh53NsdLmxKkH668x215whVMK3r1Wj
	Vc3VWtYyeukNCo6goouHyXoOe9B1rZyWCB0ObNYd5ZNcPygY9wadzkSuI/buQb2Ij5a6m3fhO1UoE
	N1y9jvB8e+LAKDfwPr0bmFiYJHacD0a/ZGbCD0STO0S7hfihFnKTXiW2kFzS/tAWWTrKOrmWz05EH
	k9Aiuz51Ko/bJWM2sy4+8FLsjjgcKA1gLYSDZGbYFPkCYq5ly7c+dTRUKVA5ttY9wmEXq6WtI9x4J
	SNHK8m51d+/KjWoWLBsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roj49-0000000HC9I-2qML;
	Mon, 25 Mar 2024 12:04:37 +0000
Received: from mail-4317.proton.ch ([185.70.43.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roj41-0000000HC5Q-2ASG;
	Mon, 25 Mar 2024 12:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711368263; x=1711627463;
	bh=0wWxnhlUgMSZvuwxbr8ru7jSnb5aI6EIzUA0B0gFuCc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=dDM8bDZVN7ZutsxtsURwCCD4JOFAowowErwOUgEQBTUH1IAzGg019hSmOXdcIkQR1
	 FI1jQLnP+CyzviPBqxLIanDf3Or2WCx4nRwCYfzRM9639Bs6TzelNSyRDoHKi8dMBM
	 /OMgRXWKlNOdraNVDhXPQ+IHRoLP8FuFSkISgHbfyt58xEtuGgZwcZRmNe/PR74ixy
	 nLiN9eOEGk3osD7VeehzK4svY/1MnhYXvVgk7mFiaSp7+DizTFG9qJ3Ohx85SXFzy9
	 SfvtXTK6A9gqHjw+cYZDeIE+bADez5uClVjklmzxmZpHNs3/ziXMhyzLLxoC8S54T7
	 Z4mdHB9dPfa5Q==
Date: Mon, 25 Mar 2024 12:04:10 +0000
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <CCTOoihgxcoHsOeXW4owCGYEAdaJ7kU3vQg9o0AFJaIvzbIj0EzBYn3To3dakOKjMwmozVEl5hwPD-K_GXYzU-XNK6GvIvRcSCMkOxDDvV4=@thefossguy.com>
In-Reply-To: <37afb6dc-28a0-46e5-ac39-3443999f3bd0@linaro.org>
References: <20240324062816.145858-1-prathampatel@thefossguy.com> <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org> <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com> <37afb6dc-28a0-46e5-ac39-3443999f3bd0@linaro.org>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_050430_591288_102FAB6E 
X-CRM114-Status: GOOD (  11.77  )
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

On Monday, March 25th, 2024 at 13:18, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> 
> 
> On 24/03/2024 12:21, Pratham Patel wrote:
> 
> > On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlowski@linaro.org wrote:
> > 
> > > On 24/03/2024 07:28, Pratham Patel wrote:
> > > 
> > > > The addition of `of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing`
> > > 
> > > Please refer to commits using commit sha () syntax, as mentioned in
> > > submitting patches.
> > 
> > Noticed that in the wiki but didn't do that since the commit hash for the commit
> > was different in each branch (of the stable tree). Maybe I should have copied the SHA
> > from Linus' tree. I will do that.
> 
> 
> There is only one tree: master/mainline tree. Commits in stable do not
> matter outside of stable.

Ack, thank you.

 -- Pratham Patel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
