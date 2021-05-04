Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3240EC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 12:50:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A265661040
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 12:50:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A265661040
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rAR/upU4g1CmD6t2R6XU7dQEhz+ob2AmMIIE1XEq+7k=; b=Z/t5KN+PgmG/8AXMVcLGeHHxE
	hmJ6daHZ1a5WgECLmDie/DGBp5yD6bCl7z8ehI8SfPsMUnSe8sWhdX2pTtnKdpzL7m6mPAdMqeyQ6
	pc7u6kzA5Or28TCnaaRbIREeC92+W9IhaUfy3hrcv+rjKcb0qd4nduwe8pjdpZkJL3eR2EE88tOXl
	0aNZSj8UDI1Ki7/huqOEoodCfcvjCixEQH3OmmNzrJwDocpZ2aUD1BHJ8HSIev7TcmJhU2upi8Ayb
	TvRHJ3hRDqSxYvRk6roxHEUGZeMinFKp+w2wBn8o559zVXLK5WDuE0uQ6mbNfcq7kLAM7CD7JklC6
	78LrE9M0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lduV8-00GDaJ-UN; Tue, 04 May 2021 12:50:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lduV7-00GDZv-Fu
 for linux-rockchip@desiato.infradead.org; Tue, 04 May 2021 12:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=Dc/eF3A4c9X62TxwSvOnpa3ffTV6fzGnkokXDjnXOxA=; b=tsLeP9ujWdhSZHkQtlJ8mUgVCj
 TKSM6ZJCzotpIIX8XKkWmDQrFKA9z1PPwjlUlqUEpXrYjRCGUX0w0470PFXl8zNINp9z6AkP6C83m
 C9Ij2Kp4wYEm5EoTTNBVcaKeOkYep/N0PCz69eliWk/69Xfs5NOEJ+My73UycTIFCS9JqnXHy9OwS
 m3o6XBtqF6iDP5GntxkdVLMn/TWdb6rwymCW7cmaG018Uh8j3pIfgVGfXzSzOSZTy5Whh8bJh7+6S
 ry2ihi2Eo/BOFlQL5+HVqzuQah3dOMnjUlxXJfqypO+GINVbuCneGrxpbxC5aUFj38p26KLJLaDVc
 RZC99+sQ==;
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lduV3-003ycg-Ez
 for linux-rockchip@lists.infradead.org; Tue, 04 May 2021 12:50:08 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id duUolE0kgWztCduUslIJRs; Tue, 04 May 2021 14:49:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620132597; bh=Dc/eF3A4c9X62TxwSvOnpa3ffTV6fzGnkokXDjnXOxA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=oryRv/9tgvyURLERIBaYxUXSMQlDw5kBS0DV3TD+UA74t5wMQpKpMyExDd/P2AeL0
 mR6FWz+Sa7Zl2jioLcziG1xk6sVZiIdoPZtv+3kozXecu6Sb+0xRVjJVLdQ/Zd5AU9
 nt4YrteRHNszbNLOC5Fg9d8wHDOi5B2OCXkC3iB05sMUd1ngTLIjN2lpLUTjFvgCru
 sOsPMRFlAXIVNXE3GC/mEixJgrmNRHoXRO31zNTa33aY5xHVvV5N0cXiEqa+ed1XRS
 QbGNV/l3V0D/Gkx6Ie6jX9VXHdRsVSzlf29KkhQ9qLMZHDhRpRJoWGqzwRQ9iT//a5
 foj0HvGivM8Ow==
Subject: Re: [PATCH v4 0/9] Microchip SAMA5D4 VPU support et al
To: Emil Velikov <emil.l.velikov@gmail.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip <linux-rockchip@lists.infradead.org>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <CACvgo50-fKJk_EpY-G_SGes6-FUs=nAouzBmSN-CYgMTpoeN_w@mail.gmail.com>
 <CACvgo53Mkvx8n8RQ4BRCNWgb2wBWhyn8A2syYzHmuv0eJ=eChg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <99f08c89-ce90-16b1-bd96-1114e3ce02e5@xs4all.nl>
Date: Tue, 4 May 2021 14:49:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CACvgo53Mkvx8n8RQ4BRCNWgb2wBWhyn8A2syYzHmuv0eJ=eChg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfFMRMAM69sLXyWIa87bLuqtH89biH8TkKpdsukACuWvyyPEmvqSQkxFBGzP5iIu1UV90Bjr1ZNp4e5ZlgL3HqZ+v2xvrdbAM85XRLPNdwTd3H+EFhgba
 ddNsd2KnE4c+9a8nxgZipk3K5uhOcRzNEwlchvHEmgfFRCLSzJTykz+w68Y8h+85AFNDysCQTi3dgVH1tU//xoMWnmvydNs88J+TgZNlgKvyKNW/3mERFxON
 Uquyq8c6vsaiq2QvmkbCI3KdinDydKNeY1WfmnQD7Uy2HrwNtNPhKQgDeW5FyICjyo9bN9yhxpKwqZgvIaNMGj6PzxcogFo3ZLkgwUspg//4/oKvbq0XMNlN
 5swZEbwP+pFwirm+Z4dGZ0fV3dgU76AWzce3zfPk7+OEYMsfYr9Irnm1V07hNadlVVDo2yx8JwTYXUpkPNqmzbgEewQC7brRgd8WIqbY7DapUCSwxfE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_055005_671083_179070A8 
X-CRM114-Status: GOOD (  14.12  )
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

On 04/05/2021 14:03, Emil Velikov wrote:
> Hi Hans, all
> 
> On Wed, 14 Apr 2021 at 11:32, Emil Velikov <emil.l.velikov@gmail.com> wrote:
> <snip>
> 
>> Is there anything I can do to move the series forward?
>>
> 
> Based on the Patchwork tracking [1], I suspect that Hans will be
> merging the series.
> Although if there is anything I can do to ease things, please let me know.

It's on my todo list for this week.

Regards,

	Hans

> 
> Thanks
> Emil
> [1] https://patchwork.linuxtv.org/project/linux-media/list/?series=5041
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
