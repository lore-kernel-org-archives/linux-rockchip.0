Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE01EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utMET/so3pytEB5f9iHzcx7WLl575u3FS1iqcYVEE9o=; b=4jzHiLUZDFfD/6
	qooI3BEpbpA+gSd5hninDiB6YU/CtCkLh5Qu1/lMnUvtPAXTyLM9b0c9ZFX9kBTGUiKeACfwboFwn
	k9crmg919i+Z7nQKyxfI1b7DSJqdmRvjCJcM5m440VFRGGDuvpchtpjzLbt+yZswtBdABZw1Q0JC9
	cnW04He7je3VJfy1twHPwhQ0lmKVvBqeSYCKd0gcBsKxNsuPG1RBdo++aJdDPzmH8kotXGAdiWrPz
	TfVeAF8tqbfPZSQHIlUJVvpNye74vJPyGda53hIoi6SZg5zbrRe/YBnfrOmyQvjKvokIP2WUX8FZL
	CPZ+4lv+180zIJaq8SoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myHj8-00BiVO-NI; Fri, 17 Dec 2021 18:13:06 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myGne-00BQA0-CZ
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 17:13:44 +0000
Received: by mail-qt1-x835.google.com with SMTP id 8so3300407qtx.5
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 09:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=w0ePfBRpZ4tnDRs/xE4SxppW2MhJaXJI3jPg1l0ZidU=;
 b=d0r+zumEWRCd8edkxDtAelIdbks/tvrSjd2WRBcpFrggZYpGv8CcpuyYipF+dIcD4X
 ujm5de4JcFhieLwM3uDJ/7a9q+qbGcNj6odnsUrmY5hUkTJqN7RWtW6M62qsPCrmEN22
 MZ1PWjnfebddZ4YNdcZ+ItYvMVfyOeTazjqPIJrb5C4Njpce8ZF87VPpdK2bo8hOPORw
 UxIMl/WKvHz7KvQ2hQ0Vt39EH4VDRNM/mp+KF37kguTSzTb33C0AtevcY7YAi4ZydTF4
 QL8A7ILJWjdpr55XZ6yxqdbR2Z1nur635t9qEopilsGB9hc2oL+pa55JGJ93C5pTZNT8
 f1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=w0ePfBRpZ4tnDRs/xE4SxppW2MhJaXJI3jPg1l0ZidU=;
 b=V8QO/XUiZbeNff7Khagc/rILT9Lx5GiEx4Ro2Lr+qPPVHrGnLD5QrBQcuktYEH2ATl
 HWkNti8XfoZ3Tmu6IPSlDn0ydPv+cKPsrcWwxFxolXMl3iOGlL7edmY9qzOE0CW5GZ5g
 7j795V/aJTyENJwk6PX9hXVHLsQmSnmefsHaSAgIRbdBoQwqlff1lJPoz4xZm+fLem48
 ZRoBJQwieeUyVr0hfoCMc3JoRJw0MrewLw67GxpmYupjAsZm/nUxXs8lC8Pt+ZaVfRyV
 VVA1ECB11IPFx+6yFN5E8BxB0k6iaTugOnIpdKJB2L+zgluZs3o1wE21oj2jhFsUtard
 nKHw==
X-Gm-Message-State: AOAM531ZJVPo1AS0t3HSl9DGyfGbUhH6IiubZRYlCiFEAWshdG+ep5/Q
 x3WUfREgOvekFfNaNofR+X8LuA==
X-Google-Smtp-Source: ABdhPJxJBL27ebJZdMFF/QRhavMPKPNPSJTTnJf3ixn7JU2VNH70vq6aREGcCANw5VyzSQrlwn44Xw==
X-Received: by 2002:a05:622a:612:: with SMTP id
 z18mr3252353qta.616.1639761220040; 
 Fri, 17 Dec 2021 09:13:40 -0800 (PST)
Received: from nicolas-tpx395.localdomain (mtl.collabora.ca. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id
 8sm7864127qtz.28.2021.12.17.09.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Dec 2021 09:13:39 -0800 (PST)
Message-ID: <8438070708d16c34c0f79aba19e67fa343adb169.camel@ndufresne.ca>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Adam Ford <aford173@gmail.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>
Cc: Tim Harvey <tharvey@gateworks.com>, linux-media
 <linux-media@vger.kernel.org>, Schrempf Frieder
 <frieder.schrempf@kontron.de>,  Marek Vasut <marek.vasut@gmail.com>, Jagan
 Teki <jagan@amarulasolutions.com>, Adam Ford-BE <aford@beaconembedded.com>,
 cstevens@beaconembedded.com, Philipp Zabel <p.zabel@pengutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner
 <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang
 <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "open list:HANTRO VPU CODEC DRIVER"
 <linux-rockchip@lists.infradead.org>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Fri, 17 Dec 2021 12:13:37 -0500
In-Reply-To: <CAHCN7xL4y67V6AW5MV=8iudvvGVBWs2LoUhu_2CUJf6bSycgFA@mail.gmail.com>
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
User-Agent: Evolution 3.42.2 (3.42.2-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_091342_600067_0C4497A9 
X-CRM114-Status: GOOD (  27.57  )
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

TGUgdmVuZHJlZGkgMTcgZMOpY2VtYnJlIDIwMjEgw6AgMDc6MTUgLTA2MDAsIEFkYW0gRm9yZCBh
IMOpY3JpdMKgOgo+IE9uIFRodSwgRGVjIDE2LCAyMDIxIGF0IDEwOjQ5IFBNIEV6ZXF1aWVsIEdh
cmNpYQo+IDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4gd3JvdGU6Cj4gPiAKPiA+IEhp
IEFkYW0sCj4gPiAKPiA+ID4gCj4gPiA+IEkgd2lsbCBwb3N0IGEgVjIgbGFzdCB0b2RheSB3aXRo
IHRoZSBNaW5pJ3MgcG9zdC1wcm9jZXNzaW5nIHJlbW92ZWQuCj4gPiA+IFNvbWVvbmUsIEkgYXBv
bG9naXplIHRoYXQgSSBmb3JnZXQgd2hvLCBtZW50aW9uZWQgaXQgd2FzIGZ1c2VkIG91dCBvZgo+
ID4gPiB0aGUgTWluaSwgc28gdGhlIHRlc3RpbmcgSSd2ZSBiZWVuIGRvaW5nIHdhcyB3aXRoIHRo
YXQgcmVtb3ZlZCBhbmQgSQo+ID4gPiByZW1vdmVkIHRoZSBIMSBlbmNvZGVyIHNpbmNlIHRoZSBN
aW5pIGRvZXNuJ3Qgc3VwcG9ydCBKUEVHIGVuY29kaW5nLgo+ID4gPiAKPiA+IFsuLi5dCj4gPiAK
PiA+IFJlc3VycmVjdGluZyB0aGlzIHRocmVhZCBoZXJlLiBJTVg4TU1STSBSZXYuIDAsIDAyLzIw
MTkgbWVudGlvbnMKPiA+IHBvc3QtcHJvY2Vzc29yIGZlYXR1cmVzIGZvciBHMSBhbmQgRzIuCj4g
PiAKPiA+IEhhdmUgeW91IGNoZWNrZWQgdGhlIGZ1c2UgYW5kIHN5bnRoIHJlZ2lzdGVycyB0byBz
ZWUgaWYgdGhleSB0aHJvdwo+ID4gYW55IHVzZWZ1bCBpbmZvcm1hdGlvbiBhYm91dCB0aGUgaGFy
ZHdhcmU/IEZvciBpbnN0YW5jZSwKPiA+IGNvbXBhcmluZyBQUCBmdXNlIHJlZ2lzdGVyIChTV1JF
Rzk5KSBhbmQKPiA+IFN5bnRoZXNpcyBjb25maWd1cmF0aW9uIHJlZ2lzdGVyIHBvc3QtcHJvY2Vz
c29yIChTV1JFRzEwMCkKPiA+IGluIGJvdGggOE1RIGFuZCA4TU0gY291bGQgYmUgdXNlZnVsLgo+
ID4gCj4gPiBBcyBJIG1lbnRpb25lZCBvbiBteSBwcmV2aW91cyBtYWlsLCBldmVuIGlmIEcxIFBQ
IGlzIGRpc2FibGVkCj4gPiBvbiB0aGUgTWluaSwgSSB3b3VsZCBpbWFnaW5lIHRoZSBHMiBjYW4g
ZG8gbGluZWFyIE5WMTIgKGFrYSByYXN0ZXItc2NhbikKPiA+IHdoaWNoIGluIG91ciBoYW50cm8g
ZHJpdmVyIGphcmdvbiBpcyBhICAicG9zdC1wcm9jZXNzZWQiIGZvcm1hdCA6LSkKPiAKPiBZb3Un
cmUgbGlrZWx5IHJpZ2h0LiAgSSB3YXMgZ29pbmcgb24gbWVtb3J5IGZyb20gYW4gZS1tYWlsIGZy
b20KPiBOaWNsb2FzIERlZnJlc25lIHdobyB3cm90ZToKPiAKPiAiSSB3aWxsIGNoZWNrIHRoZSBw
YXRjaHNldCwgYnV0IHlvdSBuZWVkIGluIHRoZSBtaW5pLXZhcmlhbnQgdG8gZGlzYWJsZSB0aGUg
RzEKPiBwb3N0IHByb2Nlc3NvciwgYmVjYXVzZSB0aGlzIGJsb2NrIHdhcyBmdXNlZCBvdXQuIFdl
IGRpZG4ndCBtYWtlIGl0IG9wdGlvbmFsCj4gZnJvbSB0aGUgc3RhcnQgYXMgYWNjb3JkaW5nIHRv
IHRoZSBWMSBvZiB0aGUgVFJNIGl0IHdhcyB0aGVyZSwgYnV0IHRoYXQgZXJyb3IKPiB3YXMgY29y
cmVjdGVkIGluIFYzLiIKPiAKPiBJbiBteSBoZWFkIEkgYXNzdW1lZCB0aGUgRzIgd2FzIGFmZmVj
dGVkIGFzIHdlbGwsIGJ1dCB3aGVuIEkgZG91YmxlCj4gY2hlY2tlZCBoaXMgZW1haWwsIGFuZCBi
YXNlZCBvbiB0aGUgYWJvdmUgc3RhdGVtZW50LCB0aGUgRzIKPiBwb3N0LXByb2Nlc3NpbmcgaXMg
cHJvYmFibHkgdGhlcmUsIHNvIEknbGwgcnVuIHNvbWUgdGVzdHMgd2l0aCB0aGUgRzIKPiBwb3N0
LXByb2Nlc3NpbmcgZW5hYmxlZC4gIEknbGwgYWxzbyBkb3VibGUgY2hlY2sgdGhvc2UgcmVnaXN0
ZXJzIG9uCj4gYm90aCB0byBjb25maXJtIHdoYXQgdGhleSByZWFkLiBJIGFtIG5vdCBzdXJlIHdo
ZW4gSSdsbCBoYXZlIHRpbWUKPiBiZWNhdXNlIEkgbGVhdmUgZm9yIExvbmRvbiBuZXh0IHdlZWss
IGFuZCBJIHdvbid0IHJldHVybiB1bnRpbCBlYXJseQo+IEphbnVhcnksIGJ1dCBJJ2xsIGRvIHdo
YXQgSSBjYW4uCgpTb3JyeSBpZiB0aGlzIHdhcyBhIGJpdCBhbWJpZ3VvdXMsIGluZGVlZCBJIG1l
YW50IHRoZSBHMSBvbmx5LiBJJ3ZlIGxlYXJuZWQKbGF0ZXIgdGhhdCB0aGUgZGVzaWduIG9mIHRo
ZSBNaW5pIGlzIHRoYXQgdGhlcmUgaXMgYSBnb29kIHByZS1wcm9jZXNzb3IgaW4gdGhlCkgxIGJs
b2NrIChlbmNvZGVyKSwgc28gZm9yIHRoZSB0YXJnZXRlZCB1c2UtY2FzZXMgdGhpcyBzaGFsbCBi
ZSBzdWZmaWNpZW50IGZvcgptb3N0IHVzZXJzICh0aGUgb3V0cHV0IG9mIHRoZSBHMSBpcyBzdWl0
YWJsZSBmb3IgR1BVIGFuZCBEaXNwbGF5IGFscmVhZHksIHNvIHRoZQpwb3N0IHByb2Nlc3NvciBp
cyBub3Qgc3RyaWN0bHkgbmVlZGVkKS4KCnJlZ2FyZHMsCk5pY29sYXMKCj4gCj4gYWRhbQo+ID4g
Cj4gPiBUaGFua3MsCj4gPiBFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
