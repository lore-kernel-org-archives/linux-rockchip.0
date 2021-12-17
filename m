Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E197C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XodQjRz3xLUJDTZJQQovBKhZNuepyJI6ZDhojjGp8I8=; b=mNUvys2aBJll/d
	BNhdVEIr7vjwaLmA7A0pJ1L9F/VPmPiP53WmzPASimc29UTOxnW0XCAMOegw22l2khppS6VcuewBG
	WMkiL/Lu0eAwtvP8ig24jP2Lb+MAN7rLxshO3/IFZ/nRuFh519F5K4kfMEOL7XhE0f2U+cNWdU52L
	baK5853/Oj4SHb4VpnYeO/xnB15Mx8Oi1yGQFfaiiH/nLftX3/JeuHkBpacBhg5f87LaePQxPFfl6
	xFuxuoTu3RVrsLQMIJ/NtGst458wzA+1pNW/V3BoQ6z83Jya0Bd4gORBMWpds0Ag1LF18cumLqtoJ
	10qgMybBsv04QwPLX1YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myI34-00BsLN-LH; Fri, 17 Dec 2021 18:33:42 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHPb-00BZpg-2B
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 17:52:56 +0000
Received: by mail-qt1-x835.google.com with SMTP id o17so3455457qtk.1
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 09:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=EdfDMc3dGy+rtz/PQ2kf0voPWh+Gy8fg3uDbtzFcCyk=;
 b=s1yP2xfwlw4arGnpUI7y1LjifZqDnsQb1y/tviXNIW6r5+cfjaBQctF8AGDlp4uLNB
 W+518UCjBVCrf2JL8fHE2MvU2mQVOH//19q5aMXsUTw604ZLTHK6jdaBHoalX/DnMxY2
 N35BUyeBK3f++52UL7N848oA3qKgR+DYoWXvfGf5NeQEl7Nw9r3zp5I5wzl3HTaqMzu4
 vkkieGMUrCPWq4Xx+cBvX8MGdQygOsQ+vQ/QMUwzPv372ygeMe3PAyLsywMGtsIZ18AW
 EoDoqyI/DdKVHEP2ZpOy6pMCWvFaVKWNjx0B3Z/Zvphq8DpbL7P9aPFiTalah3iOG50j
 d1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=EdfDMc3dGy+rtz/PQ2kf0voPWh+Gy8fg3uDbtzFcCyk=;
 b=knkEGp3VJ5dHKRKMJHXthh19hCum/Hx22EGYQ08FO5A1wzwsCLQVtfiFUojavPf8pn
 SOnkwW2WtlUJlgqLix9uDNsz1UzUL7mEmzeNVZLFTNEuQtX2GUGyAdsrHh/9+yZJbesa
 8ldEkyBQCANl6GZPIgAw1thenorDkjV3fMl/pmy+hGwWkPnb5Op5mhRy1HvPk8EZ5V8Q
 mqTDY5uxBIp5UOtS75TXC+3qJfrUaWbyGJYSOBgO9MqgqPDAbARlVQSUchjprvEWMul7
 fmJfPmgVBtNRP/w0e87Oetll1S6/kqgfwRJF4Em8IV3wqFyMELehGUROBk050VbuCg7v
 ooow==
X-Gm-Message-State: AOAM53012UXJ2GDNYtelWs9940xifFIuTlVkuZDGNl3DQNvSunBdT1zL
 IZH395msQ4YJ9bj+C57UetSFeQ==
X-Google-Smtp-Source: ABdhPJzydc3+rBb7SLARVOLCMtRjYOmkbg8KG3gbO/t8lzwiGUAnAnHeWbz325P00g8oSWik3/9jeQ==
X-Received: by 2002:ac8:7f06:: with SMTP id f6mr3508448qtk.258.1639763574019; 
 Fri, 17 Dec 2021 09:52:54 -0800 (PST)
Received: from nicolas-tpx395.localdomain (mtl.collabora.ca. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id
 x13sm5683430qkp.102.2021.12.17.09.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Dec 2021 09:52:53 -0800 (PST)
Message-ID: <41f0e00cf5e57668b643b096e6bb69c67635c540.camel@ndufresne.ca>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Tim Harvey <tharvey@gateworks.com>
Cc: Adam Ford <aford173@gmail.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, linux-media <linux-media@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Marek Vasut
 <marek.vasut@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>, Adam
 Ford-BE <aford@beaconembedded.com>,  cstevens@beaconembedded.com, Philipp
 Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko
 Stuebner <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>, Joakim
 Zhang <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "open list:HANTRO VPU CODEC DRIVER"
 <linux-rockchip@lists.infradead.org>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>,  "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Fri, 17 Dec 2021 12:52:51 -0500
In-Reply-To: <CAJ+vNU1ZxAAasKT8j1sfcFz1pk8fyYjwOW6wqxYq_ur8+2MX_Q@mail.gmail.com>
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
 <CAAEAJfCpjk5nWWkJYjjDT-YEpJi4pTZqZbzp_if9OGC0HKspzw@mail.gmail.com>
 <CAJ+vNU2we5mGXgYsR6CfimvFXZsc0zktR3fDa-h6RRa02jTT0g@mail.gmail.com>
 <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
 <CAAEAJfBXU-AiKKhkhXzgUSR4p1yefysNuHFycBz3F-GzNewS6w@mail.gmail.com>
 <CAHCN7xL4y67V6AW5MV=8iudvvGVBWs2LoUhu_2CUJf6bSycgFA@mail.gmail.com>
 <8438070708d16c34c0f79aba19e67fa343adb169.camel@ndufresne.ca>
 <CAJ+vNU1ZxAAasKT8j1sfcFz1pk8fyYjwOW6wqxYq_ur8+2MX_Q@mail.gmail.com>
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_095255_162097_5BA76F3B 
X-CRM114-Status: GOOD (  43.75  )
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

TGUgdmVuZHJlZGkgMTcgZMOpY2VtYnJlIDIwMjEgw6AgMDk6MjYgLTA4MDAsIFRpbSBIYXJ2ZXkg
YSDDqWNyaXTCoDoKPiBPbiBGcmksIERlYyAxNywgMjAyMSBhdCA5OjEzIEFNIE5pY29sYXMgRHVm
cmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToKPiA+IAo+ID4gTGUgdmVuZHJlZGkg
MTcgZMOpY2VtYnJlIDIwMjEgw6AgMDc6MTUgLTA2MDAsIEFkYW0gRm9yZCBhIMOpY3JpdCA6Cj4g
PiA+IE9uIFRodSwgRGVjIDE2LCAyMDIxIGF0IDEwOjQ5IFBNIEV6ZXF1aWVsIEdhcmNpYQo+ID4g
PiA8ZXplcXVpZWxAdmFuZ3VhcmRpYXN1ci5jb20uYXI+IHdyb3RlOgo+ID4gPiA+IAo+ID4gPiA+
IEhpIEFkYW0sCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkgd2lsbCBwb3N0IGEgVjIg
bGFzdCB0b2RheSB3aXRoIHRoZSBNaW5pJ3MgcG9zdC1wcm9jZXNzaW5nIHJlbW92ZWQuCj4gPiA+
ID4gPiBTb21lb25lLCBJIGFwb2xvZ2l6ZSB0aGF0IEkgZm9yZ2V0IHdobywgbWVudGlvbmVkIGl0
IHdhcyBmdXNlZCBvdXQgb2YKPiA+ID4gPiA+IHRoZSBNaW5pLCBzbyB0aGUgdGVzdGluZyBJJ3Zl
IGJlZW4gZG9pbmcgd2FzIHdpdGggdGhhdCByZW1vdmVkIGFuZCBJCj4gPiA+ID4gPiByZW1vdmVk
IHRoZSBIMSBlbmNvZGVyIHNpbmNlIHRoZSBNaW5pIGRvZXNuJ3Qgc3VwcG9ydCBKUEVHIGVuY29k
aW5nLgo+ID4gPiA+ID4gCj4gPiA+ID4gWy4uLl0KPiA+ID4gPiAKPiA+ID4gPiBSZXN1cnJlY3Rp
bmcgdGhpcyB0aHJlYWQgaGVyZS4gSU1YOE1NUk0gUmV2LiAwLCAwMi8yMDE5IG1lbnRpb25zCj4g
PiA+ID4gcG9zdC1wcm9jZXNzb3IgZmVhdHVyZXMgZm9yIEcxIGFuZCBHMi4KPiA+ID4gPiAKPiA+
ID4gPiBIYXZlIHlvdSBjaGVja2VkIHRoZSBmdXNlIGFuZCBzeW50aCByZWdpc3RlcnMgdG8gc2Vl
IGlmIHRoZXkgdGhyb3cKPiA+ID4gPiBhbnkgdXNlZnVsIGluZm9ybWF0aW9uIGFib3V0IHRoZSBo
YXJkd2FyZT8gRm9yIGluc3RhbmNlLAo+ID4gPiA+IGNvbXBhcmluZyBQUCBmdXNlIHJlZ2lzdGVy
IChTV1JFRzk5KSBhbmQKPiA+ID4gPiBTeW50aGVzaXMgY29uZmlndXJhdGlvbiByZWdpc3RlciBw
b3N0LXByb2Nlc3NvciAoU1dSRUcxMDApCj4gPiA+ID4gaW4gYm90aCA4TVEgYW5kIDhNTSBjb3Vs
ZCBiZSB1c2VmdWwuCj4gPiA+ID4gCj4gPiA+ID4gQXMgSSBtZW50aW9uZWQgb24gbXkgcHJldmlv
dXMgbWFpbCwgZXZlbiBpZiBHMSBQUCBpcyBkaXNhYmxlZAo+ID4gPiA+IG9uIHRoZSBNaW5pLCBJ
IHdvdWxkIGltYWdpbmUgdGhlIEcyIGNhbiBkbyBsaW5lYXIgTlYxMiAoYWthIHJhc3Rlci1zY2Fu
KQo+ID4gPiA+IHdoaWNoIGluIG91ciBoYW50cm8gZHJpdmVyIGphcmdvbiBpcyBhICAicG9zdC1w
cm9jZXNzZWQiIGZvcm1hdCA6LSkKPiA+ID4gCj4gPiA+IFlvdSdyZSBsaWtlbHkgcmlnaHQuICBJ
IHdhcyBnb2luZyBvbiBtZW1vcnkgZnJvbSBhbiBlLW1haWwgZnJvbQo+ID4gPiBOaWNsb2FzIERl
ZnJlc25lIHdobyB3cm90ZToKPiA+ID4gCj4gPiA+ICJJIHdpbGwgY2hlY2sgdGhlIHBhdGNoc2V0
LCBidXQgeW91IG5lZWQgaW4gdGhlIG1pbmktdmFyaWFudCB0byBkaXNhYmxlIHRoZSBHMQo+ID4g
PiBwb3N0IHByb2Nlc3NvciwgYmVjYXVzZSB0aGlzIGJsb2NrIHdhcyBmdXNlZCBvdXQuIFdlIGRp
ZG4ndCBtYWtlIGl0IG9wdGlvbmFsCj4gPiA+IGZyb20gdGhlIHN0YXJ0IGFzIGFjY29yZGluZyB0
byB0aGUgVjEgb2YgdGhlIFRSTSBpdCB3YXMgdGhlcmUsIGJ1dCB0aGF0IGVycm9yCj4gPiA+IHdh
cyBjb3JyZWN0ZWQgaW4gVjMuIgo+ID4gPiAKPiA+ID4gSW4gbXkgaGVhZCBJIGFzc3VtZWQgdGhl
IEcyIHdhcyBhZmZlY3RlZCBhcyB3ZWxsLCBidXQgd2hlbiBJIGRvdWJsZQo+ID4gPiBjaGVja2Vk
IGhpcyBlbWFpbCwgYW5kIGJhc2VkIG9uIHRoZSBhYm92ZSBzdGF0ZW1lbnQsIHRoZSBHMgo+ID4g
PiBwb3N0LXByb2Nlc3NpbmcgaXMgcHJvYmFibHkgdGhlcmUsIHNvIEknbGwgcnVuIHNvbWUgdGVz
dHMgd2l0aCB0aGUgRzIKPiA+ID4gcG9zdC1wcm9jZXNzaW5nIGVuYWJsZWQuICBJJ2xsIGFsc28g
ZG91YmxlIGNoZWNrIHRob3NlIHJlZ2lzdGVycyBvbgo+ID4gPiBib3RoIHRvIGNvbmZpcm0gd2hh
dCB0aGV5IHJlYWQuIEkgYW0gbm90IHN1cmUgd2hlbiBJJ2xsIGhhdmUgdGltZQo+ID4gPiBiZWNh
dXNlIEkgbGVhdmUgZm9yIExvbmRvbiBuZXh0IHdlZWssIGFuZCBJIHdvbid0IHJldHVybiB1bnRp
bCBlYXJseQo+ID4gPiBKYW51YXJ5LCBidXQgSSdsbCBkbyB3aGF0IEkgY2FuLgo+ID4gCj4gPiBT
b3JyeSBpZiB0aGlzIHdhcyBhIGJpdCBhbWJpZ3VvdXMsIGluZGVlZCBJIG1lYW50IHRoZSBHMSBv
bmx5LiBJJ3ZlIGxlYXJuZWQKPiA+IGxhdGVyIHRoYXQgdGhlIGRlc2lnbiBvZiB0aGUgTWluaSBp
cyB0aGF0IHRoZXJlIGlzIGEgZ29vZCBwcmUtcHJvY2Vzc29yIGluIHRoZQo+ID4gSDEgYmxvY2sg
KGVuY29kZXIpLCBzbyBmb3IgdGhlIHRhcmdldGVkIHVzZS1jYXNlcyB0aGlzIHNoYWxsIGJlIHN1
ZmZpY2llbnQgZm9yCj4gPiBtb3N0IHVzZXJzICh0aGUgb3V0cHV0IG9mIHRoZSBHMSBpcyBzdWl0
YWJsZSBmb3IgR1BVIGFuZCBEaXNwbGF5IGFscmVhZHksIHNvIHRoZQo+ID4gcG9zdCBwcm9jZXNz
b3IgaXMgbm90IHN0cmljdGx5IG5lZWRlZCkuCj4gPiAKPiAKPiBOaWNvbGFzLAo+IAo+IERvZXMg
dGhpcyBtZWFuIHRoYXQgaWYgdGhlIElNWDhNTSBHMiBtYXkgYmUgYWJsZSB0byBvdXRwdXQgYSB3
aWRlcgo+IGFycmF5IG9mIHBpeGVsIGZvcm1hdHMgYW5kIHRoYXQgdGhlIEgxIGVuY29kZXIgbWF5
IGJlIGFibGUgdG8gYWNjZXB0IGEKPiB3aWRlciBhcnJheSBvZiBwaXhlbCBmb3JtYXRzPyBJcyB0
aGlzIGNvZGUgYWxyZWFkeSBpbiBwbGFjZSBpbiB0aGUKCk5vIHNpbmNlIHRoZSBHMiBwb3N0IHBy
b2Nlc3NvciBkb2VzIG5vdCBoYXZlIGEgY29sb3IgY29udmVydGVyIChpdCBpcyB2ZXJ5CmxpbWl0
ZWQpLiBJbiB0ZXJtIG9mIGZvcm1hdCwgdGhpcyBpcyBwcmV0dHkgbXVjaCBpZGVudGljYWwsIHBy
b2R1Y2VzIGxpbmVhciBvcgp0aWxlZC4gVGhlIGRpZmZlcmVuY2UgaXMgdGhhdCBHMSBzdXBwb3J0
cyB0aGUgdHdvIGxheW91dCBuYXRpdmVseSwgbm90IHRoZSBHMi4KCj4gaGFudHJvIGRyaXZlciBh
bmQgaXQganVzdCBuZWVkcyB0byBiZSBlbmFibGVkIGlmIHRoZSBJTVg4TU0gY2FuIGhhbmRsZQo+
IGl0IG9yIGlzIHRoZXJlIGNvZGUgdG8gYmUgd3JpdHRlbj8KPiAKPiBJJ20gbm90IGNsZWFyIGlm
IGFueW9uZSBpcyB3b3JraW5nIG9uIElNWDhNTSBWUFUgSDEgc3VwcG9ydC4gWW91IGhhZAo+IG1l
bnRpb25lZCB0aGF0IHNvbWUgc3VwcG9ydCBbMV0gYW5kIFsyXSBjYW4gYmUgZGVyaXZlZCBmcm9t
IHRoZSBSSzMyODgKPiB1c2luZyB0aGUgR29vZ2xlIENocm9tZU9TIG1ldGhvZCAoYSB2NGwyIHBs
dWdpbiB0aGF0IHNpbXVsYXRlcyBpbgo+IHVzZXJzcGFjZSBhIHN0YXRlZnVsIGVuY29kZXIpLiBJ
J20gbm90IHN1cmUgaWYgdGhpcyBpcyB3b3J0aCBwdXJzdWluZwo+IGlmIG90aGVycyBhcmUgd29y
a2luZyBvbiBzdGF0ZWxlc3MgZW5jb2RlIHN1cHBvcnQgaW4ga2VybmVsIGFuZAo+IGdzdHJlYW1l
ci4KCk15IGNvbGxlYWd1ZXMgc3RhcnRlZCBsYXN0IHdlZWsgdGhlIHByb2plY3Qgb2YgY3JhZnRp
bmcgbWFpbmxpbmUgc3RhdGVsZXNzCmVuY29kZXIgdUFQSS4gVGhpcyBpcyB0b28gZWFybHkuIElu
IG9sZGVyIHByb2plY3QsIHdlIGhhdmUgaGFkIGdvb2Qgc3VjY2VzcyB3aXRoCnRoZSBlbXVsYXRl
ZCBzdGF0ZWZ1bCBlbmNvZGVyLiBJdCBpcyBvZiBjb3Vyc2UgcXVpdGUgbGltaXRlZCwgYnV0IHdv
cmtzIGluCmdzdHJlYW1lciwgZmZtcGVnIGFuZCBjaHJvbWl1bS4gSXQgaXMgYWxzbyBsaWtlbHkg
c2FmZXIgY29tcGFyZWQgdG8gdGhlIHZlbmRvcgpwcm92aWRlZCBkcml2ZXIuCgpwLnMuIEZyb20g
bXkga25vd2xlZGdlLCB0aGVyZSBpcyB2aXJ0dWFsbHkgbm8gZGlmZmVyZW5jZSBiZXR3ZWVuIHRo
ZSBIMSBvbgpSSzMyODggYW5kIElNWDhNTS9QLCBidXQgd2UndmUgbGVhcm4gZnJvbSBHMSB0aGF0
IHRoZXJlIGNvdWxkIGVmZmVjdGl2ZWx5IGhhdmUKbW9yZSBvZiBsZXNzIGZlYXR1cmVzLgoKPiAK
PiBCZXN0IFJlZ2FyZHMsCj4gCj4gVGltCj4gWzFdIGxpYnY0bCBwbHVnaW5zIC8KPiBodHRwczov
L2Nocm9taXVtLmdvb2dsZXNvdXJjZS5jb20vY2hyb21pdW1vcy90aGlyZF9wYXJ0eS9saWJ2NGxw
bHVnaW5zLysvcmVmcy9oZWFkcy9tYXN0ZXIKPiBbMl0gS2VybmVsIERyaXZlciAvCj4gaHR0cHM6
Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2VybmVs
LysvY2hyb21lb3MtNC40L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAtdnB1LwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
