Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A6AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 14:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw5EU1atcJA417CD1Er3lorC+VV88JKFKacIQmoTcrc=; b=APh4HHHOvhbhlt
	L1xJkjUu7lCioKFN69S0WjocbHwLQLntc3Dhcfo8RdZSXW62eFWaNWqZqpxD5D7li48jlMEdrGSge
	7W8m8HQ3iDHJJDwJHnQwHiIS3GZB3KlpSEdfFoa9o4a5ZjCdVidCmA0AoUZkjhzz9a7axSMzn4o4A
	goCsnesipT2W8/cEknQL1UZ1WrWKTTI97XoK35a3ntEM+GJsLCRqlHsosU8eID3lkejumb0yIcgjf
	2EfnUQ7uazNHtuDXq0mzSnrhb8TggeabHYJi59jIdrSqeJneXPY2TzIItBscYfxFQlN7u34f5CFoa
	5V1qbtDFO98QjYskykNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms3gm-005Ssl-UW; Tue, 30 Nov 2021 14:00:56 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms3gX-005Snm-03
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 14:00:42 +0000
Received: by mail-ed1-x529.google.com with SMTP id z5so21977906edd.3
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Nov 2021 06:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QaxZlmGeTiNSpZpCZqH57v2oCRS32AJdCJEiZtFl+fo=;
 b=UAL3sYoqWMmwujNOP724FqBzW5uObd++LAtVKS3v5u5Uf2OdsqcJyTAd46VvaTh5Bd
 CI7BPxy7k5sgJDqLq1RcsS3wNsihI78jdpDJIITTaw/+RdV8uJbwUA5jL3bVoiO2CnZz
 ECP+wZYQCeXwsVT03Cwq3TmyYVTdLKIqSaQxxB77ysN7pTZ6rhWOALXsXCermCrGDEm9
 xTqkC17qeHkGGjhP+HwJkZNAmoWQo1WEBi97ntM6TwL06wMqG3TUZavTpeNmgqXB4xXm
 gxbfUwfLqghdmcJf/K4rHwrkHT+sXq/VtbjNBGcKK6hDHJkwFOSBqyz3GYb+FTIsRGl6
 hXsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QaxZlmGeTiNSpZpCZqH57v2oCRS32AJdCJEiZtFl+fo=;
 b=3wc6OlBfW95xgyt2TxC0pf9WF+7LE1QC50EVwkB6iRjUzfKhS50WDifUY0iDn6gNCC
 qPo5PdqWqy46qEFwhvLuNcN9DBf12i30A1Ts3QWG2UeP3+tq+HdBYwuXEH8AO/xWZZPl
 Q8oJYpkoWohQtrPDSJajjii26YrW0/iRdcFUmZtuvBPtLj6qdAokw+1wtW3+tMawGRo4
 r9A7oNvnmSLDH0bDsF6gS79T1dhtRSYirb+4bJUwZ6aU5Br5vHNC7oM8BLUIFw6KhOpu
 dRrRgzlb2rRolir5YByNwEvKkFR+zmsSyIXFyXSYE/JcoXEwPbN1X1h0hwFwLu1geDAf
 UFdw==
X-Gm-Message-State: AOAM532B7tkDKEhCL+WOkeg93oh8bDJW+2OMfszlwQNB8D/zUd1i4QYh
 JMQpVnXKhzzHsJUHLA7sNXckYVG6+iOt4K50H/pAUg==
X-Google-Smtp-Source: ABdhPJwnUIPwozxEvD8GWiVDDYw5ZDqSXm6R85I9zeuQ3bp/QzgWXBdhWWpkvOKxcxv7W9iIJOUZHicmrUxw7zSXQ5g=
X-Received: by 2002:a05:6402:34c1:: with SMTP id
 w1mr83741602edc.179.1638280836615; 
 Tue, 30 Nov 2021 06:00:36 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com>
 <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
 <CAHCN7xKM9RUE7z-+ug1on+D=nDoEm589R4m03ofys92Aq75ZVQ@mail.gmail.com>
 <8db00a4b6faa99c940d9bc86e17161eb0db5efe3.camel@ndufresne.ca>
 <CAJ+vNU28UJffFv9jQ2KryJMudqYxvCaoVOVcU5dPqRA209iN6A@mail.gmail.com>
 <d91532c2c0772f9aa708ead36b2a97203727a7ea.camel@ndufresne.ca>
 <CAJ+vNU3H-V+bPoZ3qKead45h=W7AhQK6Lhjrx5ssdF4c_qfe=A@mail.gmail.com>
 <CAHCN7x+0LwwU_rEST+TZxGquswGKL19gnTy9WLofsXtGAtWqdw@mail.gmail.com>
 <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
 <CAHCN7xKRzxMBmPbDobWTuvNNSpTXk5XENvfBnfkhRY3eZKhn6w@mail.gmail.com>
 <CAHCN7xJFLNi_g+HX8PCy1Rkgf0jnWpO5QGYVz8nH19xrJkwHrA@mail.gmail.com>
 <CAJ+vNU3zFd=6k_Emc5aafxKkGwCPp4crgOFezQ-E_MbWsn1_EA@mail.gmail.com>
 <fed6c2fd7cf4971062c417ce41ed1e3812b900e0.camel@ndufresne.ca>
 <CAHCN7xK+wROHaqDcsY-3WYFQ82qX17L-LHNL3siSWnWvwFShzQ@mail.gmail.com>
 <CAAEAJfC1xXvemaFP+vTFVJ3S-SpYtrxyZgDamSOgLC1F3ua5xw@mail.gmail.com>
 <CAHCN7x+UMMP6RXsNm0=OC=UTQzh=RKqQo6B7FD5e4eoJAEfmpg@mail.gmail.com>
 <CAJ+vNU1epi9SwPMHkuDmKcb68RLemYF=bsp7AVnzz06zKc2efw@mail.gmail.com>
In-Reply-To: <CAJ+vNU1epi9SwPMHkuDmKcb68RLemYF=bsp7AVnzz06zKc2efw@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 30 Nov 2021 11:00:24 -0300
Message-ID: <CAAEAJfCpjk5nWWkJYjjDT-YEpJi4pTZqZbzp_if9OGC0HKspzw@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To: Tim Harvey <tharvey@gateworks.com>
Cc: Adam Ford <aford173@gmail.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
 linux-media <linux-media@vger.kernel.org>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, 
 Jagan Teki <jagan@amarulasolutions.com>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 cstevens@beaconembedded.com, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang <qiangqing.zhang@nxp.com>, 
 Alice Guo <alice.guo@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_060041_293300_2F295214 
X-CRM114-Status: GOOD (  14.09  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVGltLAoKT24gTW9uLCAyOSBOb3YgMjAyMSBhdCAxNjozNiwgVGltIEhhcnZleSA8dGhhcnZl
eUBnYXRld29ya3MuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgTm92IDI5LCAyMDIxIGF0IDEwOjU5
IEFNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cm90ZToKLi4KPiA+Cj4KPiBBZGFt
LAo+Cj4gV2hhdCBkZXBzIGRpZCB5b3UgaW5zdGFsbCBpbiBvcmRlciB0byBnZXQgdjRsMmNvZGVj
cyBidWlsZGluZz8gSQo+IGluc3RhbGxlZCBsaWJndWRldi0xLjAtZGV2IGJhc2VkIG9uIE5pY29s
YXMnIHN1Z2dlc3Rpb24gYW5kIHJlYnVpbHQKPiAobm90IHN1cmUgaWYgSSBuZWVkZWQgdG8gcmUt
Y29uZmlndXJlIHNvbWVob3cpIGJ1dCB0aGVyZSBpcyBzdGlsbAo+IG5vdGhpbmcgaW4gYnVpbGQv
c3VicHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzLy4gQSAnbWVzb24KPiBj
b25maWd1cmUnIHRlbGxzIG1lIHRoYXQgdjRsMmNvZGVjcyBpcyBzZXQgdG8gJ2F1dG8nIGJ1dCBJ
J20gbm90IHN1cmUKPiBob3cgdG8gZmluZCBvdXQgd2hhdCBkZXBlbmRlbmNpZXMgYXJlIG5lZWRl
ZCBvciB3aGF0IG1heSBiZSBtaXNzaW5nLgo+CgpBdCBsZWFzdCBpbiBteSBjYXNlIChDZW50cHMt
ZGVyaXZhdGl2ZSksIHRoaXMgaXMgd2hhdCBJJ3ZlIGRvbmU6CgouLi4KZ3N0LXBsdWdpbnMtYmFk
fCBSdW4tdGltZSBkZXBlbmRlbmN5IGd1ZGV2LTEuMCBmb3VuZDogTk8gKHRyaWVkCnBrZ2NvbmZp
ZyBhbmQgY21ha2UpCgpJbnN0YWxsZWQgZ3VkZXYgLi4uIGFuZCB0aGVuOgoKLi4uCmdzdC1wbHVn
aW5zLWJhZHwgRGVwZW5kZW5jeSBndWRldi0xLjAgZm91bmQ6IFlFUyAyMzIgKGNhY2hlZCkKLi4u
CmdzdC1wbHVnaW5zLWJhZCAxLjE5LjMuMQoKICAgIFBsdWdpbnMgICAgICAgICAgICAgICA6IGFj
Y3VyaXAsIGFkcGNtZGVjLCBhZHBjbWVuYywgYWlmZiwgYXNmbXV4LAphdWRpb2J1ZmZlcnNwbGl0
LCBhdWRpb2Z4YmFkLCBhdWRpb21peG1hdHJpeCwgYXVkaW9sYXRlbmN5LAphdWRpb3Zpc3VhbGl6
ZXJzLCBhdXRvY29udmVydCwgYmF5ZXIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYW1l
cmFiaW4sIGNvZGVjYWxwaGEsIGNvbG9yZWZmZWN0cywKZGVidWd1dGlsc2JhZCwgZHZic3ViZW5j
LCBkdmJzdWJvdmVybGF5LCBkdmRzcHUsIGZhY2VvdmVybGF5LApmZXN0aXZhbCwgZmllbGRhbmFs
eXNpcywgZnJlZXZlcmIsIGZyZWkwciwKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdhdWRp
ZWZmZWN0cywgZ2RwLCBnZW9tZXRyaWN0cmFuc2Zvcm0sCmlkM3RhZywgaW50ZXIsIGludGVybGFj
ZSwgaXZmcGFyc2UsIGl2dGMsIGpwMmtkZWNpbWF0b3IsIGpwZWdmb3JtYXQsCnJmYnNyYywgbWlk
aSwgbXBlZ3BzZGVtdXgsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBtcGVncHNtdXgsIG1w
ZWd0c2RlbXV4LCBtcGVndHNtdXgsIG14ZiwKbmV0c2ltLCBydHBvbnZpZiwgcGNhcHBhcnNlLCBw
bm0sIHByb3h5LCBsZWdhY3lyYXdwYXJzZSwKcmVtb3Zlc2lsZW5jZSwgcmlzdCwgcnRtcDIsIHJ0
cG1hbmFnZXJiYWQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZHBlbGVtLCBzZWdtZW50
Y2xpcCwgc2lyZW4sIHNtb290aCwKc3BlZWQsIHN1YmVuYywgc3dpdGNoYmluLCB0aW1lY29kZSwg
dHJhbnNjb2RlLCB2aWRlb2ZpbHRlcnNiYWQsCnZpZGVvZnJhbWVfYXVkaW9sZXZlbCwgdmlkZW9w
YXJzZXJzYmFkLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgdmlkZW9zaWduYWwsIHZtbmMs
IHk0bWRlYywgZGVja2xpbmssIGR2YiwKZmJkZXZzaW5rLCBpcGNwaXBlbGluZSwgbnZjb2RlYywg
c2htLCB2NGwyY29kZWNzLCBobHMsIHNjdHAKCkdTdHJlYW1lciBjdXJyZW50IG1hc3RlciBidWls
ZCBmYWlscy4gSXQncyBhIGtub3duIGlzc3VlIHdoaWNoIHdpbGwgYmUKZml4ZWQgdG9kYXk6Cgpb
Li4uXQpbOC85XSBDb21waWxpbmcgQyBvYmplY3QKc3VicHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFk
L3N5cy92NGwyY29kZWNzL2xpYmdzdHY0bDJjb2RlY3Muc28ucC9nc3R2NGwyY29kZWN2cDlkZWMu
Yy5vCkZBSUxFRDogc3VicHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2xp
YmdzdHY0bDJjb2RlY3Muc28ucC9nc3R2NGwyY29kZWN2cDlkZWMuYy5vCmNjIC1Jc3VicHJvamVj
dHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2xpYmdzdHY0bDJjb2RlY3Muc28ucAot
SXN1YnByb2plY3RzL2dzdC1wbHVnaW5zLWJhZC9zeXMvdjRsMmNvZGVjcwotSS4uL3N1YnByb2pl
Y3RzL2dzdC1wbHVnaW5zLWJhZC9zeXMvdjRsMmNvZGVjcwotSXN1YnByb2plY3RzL2dzdC1wbHVn
aW5zLWJhZCAtSS4uL3N1YnByb2plY3RzL2dzdC1wbHVnaW5zLWJhZAotSXN1YnByb2plY3RzL2dz
dHJlYW1lci9saWJzIC1JLi4vc3VicHJvamVjdHMvZ3N0cmVhbWVyL2xpYnMKLUlzdWJwcm9qZWN0
cy9nc3RyZWFtZXIgLUkuLi9zdWJwcm9qZWN0cy9nc3RyZWFtZXIKLUlzdWJwcm9qZWN0cy9nc3Qt
cGx1Z2lucy1iYWQvZ3N0LWxpYnMKLUkuLi9zdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYWQvZ3N0
LWxpYnMKLUlzdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYXNlL2dzdC1saWJzCi1JLi4vc3VicHJv
amVjdHMvZ3N0LXBsdWdpbnMtYmFzZS9nc3QtbGlicyAtSXN1YnByb2plY3RzL29yYwotSS4uL3N1
YnByb2plY3RzL29yYyAtSXN1YnByb2plY3RzL2dzdHJlYW1lci9nc3QKLUlzdWJwcm9qZWN0cy9n
c3QtcGx1Z2lucy1iYXNlL2dzdC1saWJzL2dzdC92aWRlbwotSXN1YnByb2plY3RzL2dzdC1wbHVn
aW5zLWJhc2UvZ3N0LWxpYnMvZ3N0L3BidXRpbHMKLUlzdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1i
YXNlL2dzdC1saWJzL2dzdC9hdWRpbwotSXN1YnByb2plY3RzL2dzdC1wbHVnaW5zLWJhc2UvZ3N0
LWxpYnMvZ3N0L3RhZwotSS91c3IvaW5jbHVkZS9nbGliLTIuMCAtSS91c3IvbGliNjQvZ2xpYi0y
LjAvaW5jbHVkZQotSS91c3IvaW5jbHVkZS9ndWRldi0xLjAgLWZkaWFnbm9zdGljcy1jb2xvcj1h
bHdheXMKLURfRklMRV9PRkZTRVRfQklUUz02NCAtV2FsbCAtV2ludmFsaWQtcGNoIC1PMiAtZyAt
ZnZpc2liaWxpdHk9aGlkZGVuCi1mbm8tc3RyaWN0LWFsaWFzaW5nIC1ER19ESVNBQkxFX0RFUFJF
Q0FURUQgLVdtaXNzaW5nLXByb3RvdHlwZXMKLVdkZWNsYXJhdGlvbi1hZnRlci1zdGF0ZW1lbnQg
LVdvbGQtc3R5bGUtZGVmaW5pdGlvbgotV21pc3NpbmctZGVjbGFyYXRpb25zIC1XcmVkdW5kYW50
LWRlY2xzIC1Xd3JpdGUtc3RyaW5ncyAtV2Zvcm1hdAotV2Zvcm1hdC1zZWN1cml0eSAtV2luaXQt
c2VsZiAtV21pc3NpbmctaW5jbHVkZS1kaXJzIC1XYWRkcmVzcwotV25vLW11bHRpY2hhciAtV3Zs
YSAtV3BvaW50ZXItYXJpdGggLWZQSUMgLXB0aHJlYWQgLURIQVZFX0NPTkZJR19ICi1NRCAtTVEg
c3VicHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2xpYmdzdHY0bDJjb2Rl
Y3Muc28ucC9nc3R2NGwyY29kZWN2cDlkZWMuYy5vCi1NRiBzdWJwcm9qZWN0cy9nc3QtcGx1Z2lu
cy1iYWQvc3lzL3Y0bDJjb2RlY3MvbGliZ3N0djRsMmNvZGVjcy5zby5wL2dzdHY0bDJjb2RlY3Zw
OWRlYy5jLm8uZAotbyBzdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYWQvc3lzL3Y0bDJjb2RlY3Mv
bGliZ3N0djRsMmNvZGVjcy5zby5wL2dzdHY0bDJjb2RlY3ZwOWRlYy5jLm8KLWMgLi4vc3VicHJv
amVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2dzdHY0bDJjb2RlY3ZwOWRlYy5j
Ci4uL3N1YnByb2plY3RzL2dzdC1wbHVnaW5zLWJhZC9zeXMvdjRsMmNvZGVjcy9nc3R2NGwyY29k
ZWN2cDlkZWMuYzo5MjozOgplcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYZ3JlZmNvdW504oCZ
CiAgIGdyZWZjb3VudCByZWZfY291bnQ7CiAgIF5+fn5+fn5+fgouLi9zdWJwcm9qZWN0cy9nc3Qt
cGx1Z2lucy1iYWQvc3lzL3Y0bDJjb2RlY3MvZ3N0djRsMmNvZGVjdnA5ZGVjLmM6IEluCmZ1bmN0
aW9uIOKAmGdzdF92NGwyX2NvZGVjX3ZwOV9kZWNfcGljdHVyZV9kYXRhX25ld+KAmToKLi4vc3Vi
cHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2dzdHY0bDJjb2RlY3ZwOWRl
Yy5jOjEwNjozOgp3YXJuaW5nOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhn
X3JlZl9jb3VudF9pbml04oCZOyBkaWQgeW91Cm1lYW4g4oCYZ19jb25kX2luaXTigJk/IFstV2lt
cGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogICBnX3JlZl9jb3VudF9pbml0ICgmcGljX2Rh
dGEtPnJlZl9jb3VudCk7CiAgIF5+fn5+fn5+fn5+fn5+fn4KICAgZ19jb25kX2luaXQKLi4vc3Vi
cHJvamVjdHMvZ3N0LXBsdWdpbnMtYmFkL3N5cy92NGwyY29kZWNzL2dzdHY0bDJjb2RlY3ZwOWRl
Yy5jOiBJbgpmdW5jdGlvbiDigJhnc3RfdjRsMl9jb2RlY192cDlfZGVjX3BpY3R1cmVfZGF0YV9y
ZWbigJk6Ci4uL3N1YnByb2plY3RzL2dzdC1wbHVnaW5zLWJhZC9zeXMvdjRsMmNvZGVjcy9nc3R2
NGwyY29kZWN2cDlkZWMuYzoxMTg6MzoKd2FybmluZzogaW1wbGljaXQgZGVjbGFyYXRpb24gb2Yg
ZnVuY3Rpb24g4oCYZ19yZWZfY291bnRfaW5j4oCZOyBkaWQgeW91Cm1lYW4g4oCYZ19zdHJ2X2Nv
bnRhaW5z4oCZPyBbLVdpbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgZ19yZWZfY291
bnRfaW5jICgmZGF0YS0+cmVmX2NvdW50KTsKICAgXn5+fn5+fn5+fn5+fn5+CiAgIGdfc3Rydl9j
b250YWlucwouLi9zdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYWQvc3lzL3Y0bDJjb2RlY3MvZ3N0
djRsMmNvZGVjdnA5ZGVjLmM6IEluCmZ1bmN0aW9uIOKAmGdzdF92NGwyX2NvZGVjX3ZwOV9kZWNf
cGljdHVyZV9kYXRhX3VucmVm4oCZOgouLi9zdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYWQvc3lz
L3Y0bDJjb2RlY3MvZ3N0djRsMmNvZGVjdnA5ZGVjLmM6MTI1Ojc6Cndhcm5pbmc6IGltcGxpY2l0
IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmGdfcmVmX2NvdW50X2RlY+KAmQpbLVdpbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgaWYgKGdfcmVmX2NvdW50X2RlYyAoJmRhdGEtPnJl
Zl9jb3VudCkpIHsKICAgICAgIF5+fn5+fn5+fn5+fn5+fgpuaW5qYTogYnVpbGQgc3RvcHBlZDog
c3ViY29tbWFuZCBmYWlsZWQuCgpIb3BlIHRoaXMgaGVscHMgZ2V0IHlvdSBzdGFydGVkIQpFemVx
dWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
