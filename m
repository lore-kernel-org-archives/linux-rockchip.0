Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F107C52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 19:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xd0qtgD9+7qMg6lTWhGdCirvoCrdyUEV4rFuOO81slg=; b=w44+FKPEAsUFbh+O5AVrazuRBN
	bBur8Y7lq6plMzfVcnsWiAfCzevGfv6q4RujswVibBs/WcT/3Qv1fsbT6nqgKYjA+gk26AykiSK2w
	5qCRHFH/xK2LvLP8nYmv8SXzQuYbbcVnYkeWcZz2eH2nykekg1Mo4u4KQk50nHl0rO0++l5HKyNjg
	b9yihIzvleXA65qvxeXY7TIwQ6KlX25rrGBp/+8PeyWKYMn0SMAriVoNAs8u7TTVo90uE87vC8ZKM
	kSni7QFG86dDPNpYVqW/EolXe/MZU/8PKS9S9NukD0iwOt+dIYSqE/eABhHWM4iAxI72sYszXj+lv
	HlhKbWbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sflT4-0000000H7XO-0XZH;
	Sun, 18 Aug 2024 19:21:34 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sflSN-0000000H7Mv-3F3z;
	Sun, 18 Aug 2024 19:20:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724008849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cDcEJib7h92TKx63rrBQ2WzPLHrWX9q84fsh1Pm7bec=;
	b=sWPyq25Y/xptKuZdiTSpBNHBhcsGtUAMfJUASa4VBLPhh0/R6N7U3dP87RA6jls1xx4gd7
	6frBVa2FDXrGKu/NaVq8IpA4TF3aWVVQ9QgKwVUc+Y3yJzLGmvPCVEKUwQacVujU3elGU9
	I0XMX28PqK++HvE3zDIYceu+DYHEq7J4DhfsEk9RjEd7aZ3RaL/11j8FCYx4ttFuGHh91b
	EgoNigXSXi1zQHLaRwUKFEZ5blVEUCRH0EcRzw6jOpWg6uZ8A/LsiLqU3Jns+JBvG7diQd
	83e/p/gH7NYS3+Mvabr6EZYws6jbwVa4cUwwW61wr8PXv3/pWQZCs3IuBZGCuQ==
Date: Sun, 18 Aug 2024 21:20:49 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Vicente Bergas <vicencb@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
In-Reply-To: <CAAMcf8CFED71FKUBpRy+FZNf8XKim1fuxW1C+ErZQqLsaWm1yQ@mail.gmail.com>
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <d35a5c5216ee3d0321c725aea61e0326@manjaro.org>
 <CAAMcf8CFED71FKUBpRy+FZNf8XKim1fuxW1C+ErZQqLsaWm1yQ@mail.gmail.com>
Message-ID: <4455b5175d3c372c15d9732f03b9eb20@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_122051_973496_EFEF01BF 
X-CRM114-Status: GOOD (  18.71  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wOC0xOCAyMDo1NSwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gT24gU3VuLCBBdWcg
MTgsIDIwMjQgYXQgODoyNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiAK
PiB3cm90ZToKPj4gT24gMjAyNC0wOC0xOCAyMDoxMywgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4+
ID4gaSBhbSBhIHVzZXIgb2YgdGhlIENPTkZJR19TUElfU1BJREVWIGRldmljZS4KPj4gPiBJdCBz
dG9wcGVkIHdvcmtpbmcgYmV0d2VlbiA2LjggYW5kIDYuMTAuNS4KPj4gPiBUaGUgU1BJIGJ1cyBp
dHNlbGYgcmVwb3J0cyBubyBlcnJvcnMgdG8gdXNlcnNwYWNlLCBidXQgbm8gZGV2aWNlcwo+PiA+
IGFwcGVhciBjb25uZWN0ZWQgdG8gdGhlIGJ1cy4KPj4gPiBUaGUgcGxhdGZvcm0gdXNlZCBpcyBS
SzMzMjguCj4+ID4gVGhlIG9ubHkgc3BpLXJlbGF0ZWQgbWVzc2FnZSBpbiBkbWVzZyBpczoKPj4g
PiByb2NrY2hpcC1zcGkgZmYxOTAwMDAuc3BpOiBSdW50aW1lIFBNIHVzYWdlIGNvdW50IHVuZGVy
ZmxvdyEKPj4gCj4+IEknbSB3b3JraW5nIG9uIGEgcmVsYXRlZCBwYXRjaC4gIENvdWxkIHlvdSwg
cGxlYXNlLCBkZXNjcmliZSB5b3VyCj4+IHVzZSBjYXNlIGZvciB0aGUgc3BpZGV2IGRyaXZlciwg
aS5lLiB3aGF0IGJvYXJkIGFyZSB5b3UgdXNpbmcgaXQgb24sCj4+IGFuZCBmb3Igd2hhdCBwdXJw
b3NlPwo+IAo+IFRoZSBib2FyZCBpcyBST0NLNjQgYW5kIHRoZSBwdXJwb3NlIGlzIHRvIHVwZGF0
ZSBhbGwgdGhlIHNvZnR3YXJlIHRoYXQKPiBib2FyZCBydW5zLCB3aGljaCBpcyBzdG9yZWQgb24g
dGhlIFNQSSBOT1IgZmxhc2ggb25ib2FyZC4KClNvLCBpZiBJIGdvdCBpdCByaWdodCwgeW91IGJv
b3QgeW91ciBSb2NrNjQgZnJvbSB0aGUgU1BJIGNoaXAgdGhhdApjb250YWlucyBhbGwgdGhlIHNv
ZnR3YXJlIGl0IHJ1bnMsIGJ1dCB5b3UgYWxzbyBib290IExpbnV4IG9uIGl0IGZyb20KYSBtaWNy
b1NEIGNhcmQsIHRvIHVwZGF0ZSB0aGUgY29udGVudHMgb2YgdGhlIFNQSSBjaGlwPyAgSSdtIGd1
ZXNzaW5nCml0IHRoYXQgd2F5LCBiZWNhdXNlIHRoZSBzaXplIG9mIGFuIFNQSSBjaGlwIGlzIGhh
cmRseSBsYXJnZSBlbm91Z2gKZm9yIHN0b3JpbmcgZXZlbiBhbiBleHRyZW1lbHkgc2l6ZS1vcHRp
bWl6ZWQgTGludXggc3lzdGVtLgoKQW55d2F5LCBJIHdvbmRlciB3aHkgZG8geW91IGhhdmUgdG8g
dXNlIHRoZSBzcGlkZXYgZHJpdmVyIGZvciB0aGF0CnB1cnBvc2U/ICBXaHkgY2FuJ3QgeW91IHVz
ZSAnY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsnIHRvIGFjY2Vzcwp0aGUgU1BJIGNoaXAg
dGhyb3VnaCAvZGV2L210ZDAgdW5kZXIgTGludXg/Cgo+IEkgaGF2ZSBub3QgdGVzdGVkIHRoaXMg
a2VybmVsIHZlcnNpb24gb24gUkszMzk5LCBidXQgaXQgbWF5IGFsc28KPiBhZmZlY3QgdGhhdCBv
dGhlciB1c2UgY2FzZToKPiBodHRwczovL2dpdGxhYi5jb20vdmljZW5jYi9rZXZpbmJvb3QKPiAK
PiBOLkIuOiBNeSBuYW1lIGlzIFZpY2VudGUuCgpPaCwgSSdtIHNvcnJ5IGZvciBtaXN0eXBpbmcg
eW91ciBmaXJzdCBuYW1lLiAgU2hvdWxkJ3ZlIGNvcHkgJiBwYXN0ZWQKaXQgaW5zdGVhZCwgdG8g
cHJldmVudCBzdWNoIHR5cGluZyBtaXN0YWtlcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
