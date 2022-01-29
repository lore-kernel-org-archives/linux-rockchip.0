Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A0DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 09:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js6h0aRfV/W5LQelG/6VgO7ZMFyGGRPoeWxJErpBW48=; b=3jUyRXvWnP28is
	kNMEfEsyXGEMlvkFRO4rPhaD3n2/ZNNBYo/QgE1gZAXyvepQqQLGPvgr3eb0447em0uMToJ5wuS6U
	B4PZHdBB3sVLBopFyixIXx2V9DmUOhyZo2CNCvTbTmsF8DOmdgU6/Vnh9gV87Hnb6GvYhbk5UHErH
	07C2vxoAiAbEtmwoTXIWlNUZLvWNAo1BXl4DEv6PBkmBY0rAiWU79z/l4TeQxCosfH+Y7HsztT2r+
	mDOPmxpT7hSfyV7eBUeNzicBzqE53XOwNNXyqBNtLCpP9WLCqrSyWsLxoLF8NgdKaYZkSTddfyzIV
	UHwf6usBmU447nEWLL4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDjxI-004OT1-84; Sat, 29 Jan 2022 09:23:36 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDjx4-004ORP-UH; Sat, 29 Jan 2022 09:23:24 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b9so16494700lfq.6;
 Sat, 29 Jan 2022 01:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KVPWNoQrOh4gwIS/NTKfwX1pCCKtfusbVveEiycdTlA=;
 b=DMKpx/mOMfOI21feRiUbT2oeVdaTx0RfWxyiFQ2n5jAFIdjM+oaXTaAWOTF51h8lIt
 EfCy8DZfnipXO8aRfg0Mp/Y/DjwkUY3kjMzpyh3LhL7emtVBR7jykxnh9KuyyXu+IVzo
 +Uv+hRCF2HBbvSkvq1KbPU4KnQotY2tyU8EVZdjGW4vNrC/aXsFj8v4RKWA1bAAqY7/i
 V2GDPndsnk0wdqVwuogA7Uf8+TfDu7G4kdc3n4ksVQStfs7elj3cdb+Af92cwJuDqUCa
 E67uootxFouyYc2Y3LyprLnGvamc+q6i/Jx0IbmUFkmG+vGEWG4ZJBJSGSrxIRWng7kM
 0gPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KVPWNoQrOh4gwIS/NTKfwX1pCCKtfusbVveEiycdTlA=;
 b=0iP8mVEO28XHLTvK7sxdl4PJ0tT9NzTlsccK05ieXTCbv9HJ6oVtjqgkOaE7RTQSyf
 cZldSs56kyK5DlowUthdWN8pbb6OWmaCsO7s6HJMyFavF/MMeDMxJWSMeCv2m/kgmsDG
 vCREMbe4hHbbi9JrMImjeBv/pMYdmNPkFEl16lnHrbnzAYPZBJmMmo3nvsPjECmRFF2j
 1J2rXQLuqmCSR+fsU9q4JnT5U5u2bwfkDNnjFB+dyxI+bSUUmvezLSX1R/YZK9HkcZ9S
 MIZNCQdlbYBQVa/LTIxhjpuvhcx3bDUn2yz/7oSF/SbWJBLPF8ymKyt12ZuidHIRAFJq
 agIw==
X-Gm-Message-State: AOAM531nbUQaPNjTSLufsA2DHexKP5muw+aX0l0Pnx7QHdoy0DLbe6WX
 ap5DVuo42xbREaZahSZFnxg=
X-Google-Smtp-Source: ABdhPJyaLcKoXoj1+6kWfERTDb9i4r4ZTSXhTaGOw5RGwBC3tS/TconpSBW3IKUr+gPuifjgzU+3Ow==
X-Received: by 2002:a05:6512:33d1:: with SMTP id
 d17mr1232439lfg.455.1643448199773; 
 Sat, 29 Jan 2022 01:23:19 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id u15sm658935lfq.107.2022.01.29.01.23.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jan 2022 01:23:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rename and sort the rk356x usb2
 phy handles
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYpkXdXDST+N8dEn7UvibXmytwNeJ+KZ9bn9Oq+RJuSaeQ@mail.gmail.com>
Date: Sat, 29 Jan 2022 10:23:18 +0100
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>
Message-Id: <FBB7C392-C5E0-4E34-AC17-5323414623F5@gmail.com>
References: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
 <CAMdYzYpkXdXDST+N8dEn7UvibXmytwNeJ+KZ9bn9Oq+RJuSaeQ@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_012323_030712_C501A978 
X-CRM114-Status: GOOD (  11.92  )
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



> 
> Good Evening,
> 
> While I'm not against this idea, my main concern still stands.
> I spent a great deal of thought on this, and decided to go the route I
> did to maintain consistency with previous generations.
> As such, I see one of three paths here:
> - Pull this patch only and depart rk356x from previous SoCs.
> - Do the same for previous SoCs to maintain consistency.
> - Drop this patch to maintain consistency with previous SoCs.
> 
> I ask that others weigh in here, as offline discussion has produced
> mixed results already.

just pure user perspective

(who spent last weeks considerable time to develop DT for rk3566 tvbox. 99% of my work was by reading/learning from other boards existing DT's. Any inconsistencies in DTs makes work for such ppl like me much more harder):

For option 1 - i don't see value
For option 2 - what is reward for extra work needs to be done on all other SoCs?

so option 3 seems to be natural choice...

in other words:

for me:
option 1 brings practically zero value + increased inconsistency.
option 2: extra work - but consistency is like in option 3 (so where is value?)

so option 3 offers the same consistency - but without extra work...
 
just my 0.02$

 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
