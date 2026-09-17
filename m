Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17062C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmejM/rNPY/mXOHTNn6SPTuWRmtIzLWNvcIh5WOR5+U=; b=49sbEQ1PYVvUzG
	fur1zvfRTj/m/MSfceos7xX/lBlkJyqOYoXcg1tNBeHJhl0D9FXZfcayhvt1Xjr852DCkVRPnWINm
	cdQOa/cK/7UmqcWshsgLlwkL03XRr2WLdduSNesbEl7BHz2caV9tqAi6NIKcR+8lxp5M/9VQwyKco
	wynN7Xbd1If+TtsulVTEil3/xxHwaNByErgPZvHD+2fxztXA1t/kPvDarS2p1OGeR3UJGox2fMJKM
	laktDTchD3GK7y2ptiJRiqdQizX66X7F7qAxOyqLXkkNtOTTuzVhcvl6tqHBN91eKu1+OE5s7pnu9
	RquFUgl0cAQuSHuB5MeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7IJl-0000000COR4-2e1F;
	Thu, 17 Sep 2026 20:02:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7IJk-0000000COQI-0LKf
	for linux-rockchip@bombadil.infradead.org;
	Thu, 17 Sep 2026 20:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=; b=OI21Qtk5eshZ4s9mnoyziQP47R
	oesVpTPKLM0ha37ytPdCO/b/hka15OQpStNAWoTo5aKh6irCtbGQCE/3SEcXdnUJvNvKjSt0D1Cyq
	9gw+vKxjkEhpborFDjS1Gp9OC/9arldpR+h8ZXyjKTqKYek4bFkg1gGHCcFPJQmyCdn8KnbjjMzPk
	fFE0IKCLCipcKAVowlviFbm/P1oRBMHKnUkTyj4WRTsNmXZyCuf1nbSr+J1HkDQ2ohyqWN3Pc5zxg
	bCXpyFEI83gpdLVgeRnHn962fzmR7JHeuZsAvAr1aV8A8JnpNJOHiI6dnu9V6RvecG7yeG2hWwGBE
	NHgPGyOA==;
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7IJh-00000009ECG-0ZFk
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:02:47 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c294cac59bbso75615866b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789675363; cv=none;
        d=google.com; s=arc-20260327;
        b=aMenug1B/Ovi26N3PC0zStzzT6aMIlua3gkWz0n+3LOyXRSFzPUq+YIIuwXpJHQTvr
         z+244PXk4TCnkFgsEhaoUaYrzMChwtFx5QNb7E7ZeO0MqxzSwkeIvktmJg7pIj12NT0d
         H0fw4rzjyXWhOEGNRIGIjIRynpWE3Xv4/8+Qb5mA8Wwd8JOo1I8Uyn02ij3kMa6PgrF7
         Zj/7T1iJ0H/r8F+o8uaEBDOXc78PHJVBQudRfTpfelHiKFXqvZy+XFKiC4Vs63IC5+6X
         yjpXr+77amALBP7bNaf1if0khkVpHuOSSM20N6HiJQRTV5iD9aq11wxAmtKh/3k+vtdZ
         EFMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        fh=KQ05oCDhZJYJ3vpCsg/Rzhi5/CIIIofHo+fD9v5uAsI=;
        b=cQ6ph6Y/7mmhKWf11sP/btesM/GemrLY+FLvxMvljKW4T7xth7wfZAqFsMG5K/n/qG
         PMSjeF4CzLUDleWQBCgzVzx26/EZiqt9ZJkmncco7j0/LZ9v4xRqXO50jVlb9k9SyNpx
         EVng89Q5vhTCb5jDI1WnEl9olxT8QLjwqQNG90hVjxuB2L55KVpCZsZBImDu6arzOQ06
         UAUd3xZHhoeVYzW0A0tIF6l6oRUpqzVoCbPGbx+MmJRCVVT97blE0QtJRkSJOJWChHfK
         t1A9aA+AVlofh4wTBZnbfhh13hjTKfhz4w32KPAFXhNFdSCASGCVNtfrcyOWg/LrvBkJ
         WVvA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789675363; x=1790280163; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        b=gzDjG3Vo047VZMqW9aNBjedhF9qqqhVZ4wg8TWutMXiVaSrZZF3nEnncP9VgWpmpFE
         sYszfmG+MyTjb/lBTAWV2XtMYJ5TvYXOulh10hz0L9rcLyBmHkYhXnAaD49xFuiPfTcO
         j0nY30YVEnRO/PyhC9M1uQoyLzci2Yux2aMoVKlM6pDI1Cj2/dl37mmmLBj1k3EEdKA5
         +lCAHXyVNNfWHzcyQigX1aBCZ7uCa02vVFTAKA2mo8CSqzRukvf1sermKkAd60XkyE/F
         PTw8TpLF0kLfBSyCrMHROcyZCwmCaSIHBZ3cJgBeDymo7bpAsXAyQ0gK8uxRkDCnBh9j
         1Qrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789675363; x=1790280163;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        b=FnIFv+S6OZmcK/wyXXoP8aiNybWAEpbJ/ZB2ujjG+Bk0aNRQEdd6uWHyD0I1aYCXE6
         DQy6BBcUQbkXDJ5I/aUA0HcTO0ZUHOQPjuw+3JmFq4BqkMLWbziRzi76UvmxZlp3kVpt
         Uhm+aRa2lGoBF8U/+zvH+sGpwsQ9gwBtmaNo5zzmfDF2Lr5OfYebgaJXR0itCLoiniDv
         MgSr7eG9h1w0Q7t4QV1H4I/9uDMUm4BwkcGdDJew+JGzHfXVMS/Rsdcj1fCuvTjPtN2C
         zTayq167voI6LMPtYyVWDynS6Lv67z7Gpn1b889SNbAHZNk9lBaNJw3ganhL05O96+om
         yv1w==
X-Forwarded-Encrypted: i=1; AKwUvBweNHuRaL07BZcj/QxXYnyYManJq4ktE0T2C6P+m4S+RuKh5EyGPiHe1nYcQGAY3a23hsKwYXbUhZBlD3oBlw==@lists.infradead.org
X-Gm-Message-State: AFuF++nQK3GTKd+Dy+HNNUEgDIURRr5Ss7oBbACVZBHQWAAzu2ZLLcuM
	ktZ9eML0CG6pBU/9tAJNuRki2qqHjtU5JKotYBulC+A46txr9DVeu1zeThX281WSG7+rnDQzL+p
	EMudqhnaOPXSuoVctsCwhAyHE28HBwyI=
X-Gm-Gg: AYBFou2//adAed/5uzrUm+uzpLksTPWjd3y+kXitGGDB/3H44VgbUcEe68skNapztMd
	LI4cdBcmdWj72Jbq7NkS7gZl0IGbBeAHCYEuGel4+dnDc98uCKxFp9+e9kX8bfGziCsT1gN2iox
	3Im8Un2NT8xzHwtTkJ4l0V1R6fBh1WLan3DpUwqPBdcI8bi02rTw25KxxMZQvYAmcup3SXZxUlp
	6tZKXNVjdqjlQdGL27KqntCqIzRyLqu0bawgjT6KIAkOlLZDa77rqeYZ+G6QqtDemVPTP5zA8SP
	twB2M7LPdEAZL8QklSGcgXr/JXJR9lOq/OSW2zattYcpwX4dOcYiFrKsbQ==
X-Received: by 2002:a17:907:3ea5:b0:c29:4204:8dbf with SMTP id
 a640c23a62f3a-c2a157be91fmr24595366b.7.1789675362739; Thu, 17 Sep 2026
 13:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260915123802.1561724-4-coiaprant@gmail.com> <178967028966.22033.2377561177851606071@kernel.org>
In-Reply-To: <178967028966.22033.2377561177851606071@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Fri, 18 Sep 2026 04:02:31 +0800
X-Gm-Features: AcwNN1V0XFtsL3x8UawoWV106fmNQdao8d4jMazcuCe1sSda_ba5TrpA_lpwoh4
Message-ID: <CALj3r0jGVO_bDDkf1ts8ajtsRf8Tq--TG=Hfb4m8B5bbNLryqQ@mail.gmail.com>
Subject: Re: [PATCH net-next v6 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_210245_251340_68526106 
X-CRM114-Status: GOOD (  24.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE45pel5ZGo5LqU
IDAyOjM45YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDAgwrcgTG93OiAxCj4KPiAtIFtM
b3ddIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jOjM4
MC0zODEgcmVhZHMKPiAgICdyb2NrY2hpcCxzZ21paS1tYWMtc2VsJyB3aXRoIGRldmljZV9wcm9w
ZXJ0eV9yZWFkX3UzMigpIGZvciBldmVyeeKApgo+Cj4gLS0KPgo+IHBoeTogcm9ja2NoaXA6IG5h
bmVuZy1jb21icGh5OiBhZGQgU0dNSUkgTUFDIHNlbGVjdGlvbiBmb3IgUkszNTY4Cj4KPiBUaGlz
IGFkZHMgYSAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIgRFQgcHJvcGVydHkgc28gdGhlIFJLMzU2
OCBTR01JSQo+IGludGVyZmFjZSBjYW4gYmUgcm91dGVkIHRvIEdNQUMwIG9yIEdNQUMxIHZpYSB0
aGUgUElQRV9HUkZfWFBDU19DT04wCj4gcGlwZV9zZ21paV9tYWNfc2VsIGJpdCwgZGVmYXVsdGlu
ZyB0byBHTUFDMSB0byBtYXRjaCB0aGUgaGFyZHdhcmUgcmVzZXQKPiB2YWx1ZS4KPgo+IExpbms6
IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIw
UkszNTY4JTIwVFJNJTIwUGFydDElMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMjkpCj4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNv
bWJwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBo
eS5jCj4gPiBpbmRleCA3ODQzMzU2YTRkZDQ3Li43Yjg2N2U3NTIwMDY0IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiA+
ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5j
Cj4KPiBbIC4uLiBdCj4KPiA+IEBAIC0zNzUsNiArMzc3LDkgQEAgc3RhdGljIGludCByb2NrY2hp
cF9jb21icGh5X3BhcnNlX2R0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJvY2tjaGlwX2Nv
bWJwaHkKPiA+Cj4gPiAgICAgICBwcml2LT5leHRfcmVmY2xrID0gZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsZXh0LXJlZmNsayIpOwo+ID4KPiA+ICsgICAgIHByaXYtPnNn
bWlpX21hY19zZWwgPSAxOwo+ID4gKyAgICAgZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwg
InJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiLCAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7Cj4gPiArCj4K
PiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIGlzbid0IGEgYnVnIGZvciBhbnkgc2NoZW1hLWNoZWNr
ZWQgZGV2aWNlIHRyZWUsIGJ1dCB3b3VsZCBpdCBiZSB3b3J0aAo+IHJlYWN0aW5nIHRvIHRoZSBy
ZXR1cm4gdmFsdWUgaGVyZT8KPgo+IFRoZSBiaW5kaW5nIHJlc3RyaWN0cyB0aGUgcHJvcGVydHkg
dG8gdHdvIHZhbHVlcyBhbmQgdG8gb25lIGNvbXBhdGlibGU6Cj4KPiAgIHJvY2tjaGlwLHNnbWlp
LW1hYy1zZWw6Cj4gICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Vp
bnQzMgo+ICAgICBlbnVtOiBbMCwgMV0KPiAgICAgZGVmYXVsdDogMQo+Cj4gICAuLi4KPiAgICAg
ICAgIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6IHRydWUKPiAgICAgZWxzZToKPiAgICAgICBwcm9w
ZXJ0aWVzOgo+ICAgICAgICAgcm9ja2NoaXAsc2dtaWktbWFjLXNlbDogZmFsc2UKPgo+IEluIHJv
Y2tjaGlwX2NvbWJwaHlfcGFyc2VfZHQoKSB0aGUgcmVzdWx0IG9mIGRldmljZV9wcm9wZXJ0eV9y
ZWFkX3UzMigpIGlzCj4gZHJvcHBlZCwgc28gYSBtYWxmb3JtZWQgcHJvcGVydHkgKGZvciBleGFt
cGxlIGEgemVyby1sZW5ndGggb3Igd3Jvbmctc2l6ZWQKPiBjZWxsLCB3aGljaCByZXR1cm5zIC1F
Tk9EQVRBLy1FT1ZFUkZMT1cgYW5kIGxlYXZlcyB0aGUgb3V0cHV0IHVudG91Y2hlZCkKPiBlbmRz
IHVwIGluZGlzdGluZ3Vpc2hhYmxlIGZyb20gYW4gZXhwbGljaXQgcmVxdWVzdCBmb3IgR01BQzEu
Cj4KPiBUaGUgcmVhZCBhbHNvIGhhcHBlbnMgZm9yIGV2ZXJ5IGNvbXBhdGlibGUsIGluY2x1ZGlu
ZyByazM1MjgvcmszNTYyL3JrMzU3Ni8KPiByazM1ODggd2hlcmUgdGhlIGJpbmRpbmcgZGVjbGFy
ZXMgdGhlIHByb3BlcnR5IGludmFsaWQ7IHRoZXJlIHRoZSB2YWx1ZSBpcwo+IHBhcnNlZCBhbmQg
dGhlbiBuZXZlciB1c2VkLCBzaW5jZSBvbmx5IHJrMzU2OF9jb21icGh5X2NmZygpIGNvbnN1bWVz
IGl0Lgo+Cj4gWyAuLi4gXQo+Cj4gPiBAQCAtODczLDYgKzg3OCw4IEBAIHN0YXRpYyBpbnQgcmsz
NTY4X2NvbWJwaHlfY2ZnKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnByaXYpCj4gPiAg
ICAgICAgICAgICAgIGJyZWFrOwo+ID4KPiA+ICAgICAgIGNhc2UgUEhZX1RZUEVfU0dNSUk6Cj4g
PiArICAgICAgICAgICAgIHJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGlwZV9n
cmYsICZjZmctPnBpcGVfc2dtaWlfbWFjX3NlbCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwcml2LT5zZ21paV9tYWNfc2VsID4gMCk7Cj4KPiBbU2V2ZXJp
dHk6IExvd10KPiBTaG91bGQgb3V0LW9mLXJhbmdlIHZhbHVlcyBiZSByZWplY3RlZCByYXRoZXIg
dGhhbiBmb2xkZWQgaW50byBHTUFDMT8KPgo+IFRoZSAicHJpdi0+c2dtaWlfbWFjX3NlbCA+IDAi
IHRlc3QgY29sbGFwc2VzIHRoZSB1MzIgdG8gYSBib29sZWFuLCBzbyBhCj4gZGV2aWNlIHRyZWUg
d2l0aCByb2NrY2hpcCxzZ21paS1tYWMtc2VsID0gPDI+IChvciAweGZmZmZmZmZmKSB0aGF0IHdh
cyBuZXZlcgo+IHJ1biB0aHJvdWdoIGR0YnNfY2hlY2sgZ2V0cyB0aGUgR01BQzEgcm91dGluZyBh
bmQgcmszNTY4X2NvbWJwaHlfY2ZnKCkgc3RpbGwKPiByZXR1cm5zIHN1Y2Nlc3MsIHdpdGggbm90
aGluZyBsb2dnZWQuCj4KPiBBIHJhbmdlIGNoZWNrIGluIHJvY2tjaGlwX2NvbWJwaHlfcGFyc2Vf
ZHQoKSByZXR1cm5pbmcgLUVJTlZBTCwgb3IgYXQgbGVhc3QKPiBhIGRldl93YXJuKCksIHdvdWxk
IG1ha2Ugc3VjaCBhIGRldmljZSB0cmVlIHZpc2libGUgaW5zdGVhZCBvZiBzaWxlbnRseQo+IHNl
bGVjdGluZyB0aGUgZGVmYXVsdCByb3V0ZS4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4KClRoZSBw
cm9wZXJ0eSBpcyB2YWxpZGF0ZWQgYnkgZHRic2NoZW1hIGZvciBhbGwgaW4tdHJlZSBkZXZpY2Ug
dHJlZXMsCndoaWNoIGlzIHdoZXJlIHRoZSBlbnVtIGFuZCB0aGUgY29tcGF0aWJsZSBnYXRpbmcg
YXJlIGVuZm9yY2VkLiBBCm1hbGZvcm1lZCBvciBvdXQtb2YtcmFuZ2UgdmFsdWUgY2FuIG9ubHkg
Y29tZSBmcm9tIGEgYm9vdGxvYWRlci1zdXBwbGllZApEVCBvciBhbiBvdmVybGF5IHRoYXQgYnlw
YXNzZWQgZHRic19jaGVjaywgd2hpY2ggaXMgYSB1c2VyIGVycm9yIHJhdGhlcgp0aGFuIHNvbWV0
aGluZyB0aGUgZHJpdmVyIG5lZWRzIHRvIGRlZmVuZCBhZ2FpbnN0LgoKVGhlIHJlYWQgcmVzdWx0
IGlzIGludGVudGlvbmFsbHkgaWdub3JlZDogdGhlIGRlZmF1bHQgb2YgMSBtYXRjaGVzIHRoZQpo
YXJkd2FyZSByZXNldCB2YWx1ZSwgc28gYSBtaXNzaW5nIHByb3BlcnR5IGFuZCBhbiBleHBsaWNp
dCAiMSIgYXJlCnNlbWFudGljYWxseSBpZGVudGljYWwgZm9yIHRoaXMgaGFyZHdhcmUuCgpUaGFu
a3MsCkNvaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
