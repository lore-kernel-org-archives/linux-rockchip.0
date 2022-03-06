Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD2CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 10:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Shodk+S2UDL8aNjJ85a3Qipt1fET03f5wLsFsMzhnY=; b=WZIjYZg/9f7OH/
	QNOUambWSYSi90+xZSpf3vFSOSM+L0AMIfhwtdVL76TqN/TSRieccS6bD+eDDac8j8TjqO2pLm4Xd
	Fzvy5b7505MByhoSB0bclJExljt1q2zdDZf6Y5Ztjg0sc4A7q8xkS8W5Eq4mKJssE1hNQS/JVq/XH
	03UvlpZYQIsw+nPz4wlu4gwqBPJ4ES4Oekj+Y4y7ysbU2ymeE6jXM0ilJYwEvnz5HEYlZMRN1c9Od
	dILhfvtaZ7Ga2KWrXJWocMW1TSEtcRkCnt98bjsySGzSWegLXwRugzrEgLI1M56PtL1taBZB1HFHu
	PnO0ZhBjCAUSN1gymVYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQo6p-00ER5k-Tt; Sun, 06 Mar 2022 10:27:27 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQo6l-00ER3b-V6
 for linux-rockchip@lists.infradead.org; Sun, 06 Mar 2022 10:27:25 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0DFC83F5F5
 for <linux-rockchip@lists.infradead.org>; Sun,  6 Mar 2022 10:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646562433;
 bh=6KkTN0LeArjXAcefIpdLmm7qeM+MQdTOUpPRHb6gxxw=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=YxeGsVkaRHIk6qcVjMnRU+7g5+LBiDRkBKMIxI1h16qdNvDOziJSSqeLAxYF7p+5/
 h/58CeJKxqAc1Rg+UVjVKDcXakrcVrS1me8gFkI8vs2j8MPEPaHpPmIqXmtQybExDi
 KOFGFkaj/m7X0BOT0LU7qVegmjWa7ycQ8qutsLTAlLGqSXGk/IxuYG3jNXqx95ikH8
 pZRtQDLiZsa3btvlsIHz4oap6CvvGhUiSnyIuDUQhwN9f9xHH9Qrw6DrKJHqKo+4ql
 vtRYu4HWLqmfY1bKdeEWnzICiqMGkFDgG0i4PGngdLRCwDecIEh4fDHl2xssQMgff2
 eAhUmQfYm06Aw==
Received: by mail-ej1-f72.google.com with SMTP id
 k16-20020a17090632d000b006ae1cdb0f07so6127556ejk.16
 for <linux-rockchip@lists.infradead.org>; Sun, 06 Mar 2022 02:27:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6KkTN0LeArjXAcefIpdLmm7qeM+MQdTOUpPRHb6gxxw=;
 b=0SC057E2mS/P1YX2E3dtv+dcpOzLfvDyacvsNc89nFkSHrgxHBV/1oYvtdKALeJqZP
 nMfzXRh0MLXhirl8/9835+4YA9iEhJ5hOKBqt+h+WRTS2oQLxA7urQXA53KZRaJlV/dx
 QCLKFgkvawrXEgIYZaoYBBjdpQetSqZkX3518fsSREZrJozNX5IaRB9uaeDIjp1hxzNC
 UMAg6hQ19uBTHO37m0weNNNBP68IurwvwxJpD9GDop0g4zHpWhgyauT1bg85WPZRRl3v
 QIfHXvz+6unQDx1DxAUmLboxmeG/xsxL0Sl6DNkGRHL93SwIIBt2e/D6uAQR1JCfoMw2
 dRFQ==
X-Gm-Message-State: AOAM533sL50zzN6OhvffoorS2CXRPzHsS2PLz/G3UITFib4i1XEYfhDf
 N6hZUl1c8+DIyOJiAtfjPGa9n8Zr3x1q6ynmSp5rSj5z2hKFpKMSM+vciIGNlQNMIV9o8DDjJFo
 34c1pEJvqQSA1e755D4K0iJZBprorWXmfRmjeZlriurKNC+NYAA==
X-Received: by 2002:aa7:c6d7:0:b0:415:a0fc:1dcd with SMTP id
 b23-20020aa7c6d7000000b00415a0fc1dcdmr6450197eds.266.1646562432669; 
 Sun, 06 Mar 2022 02:27:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyrMAcoAWXRgn7hEJ+8qeDd+XTUIfibTrmckOKcKkYM9sj7Odn7MupwEm9OyZsbxgGfqv/5+w==
X-Received: by 2002:aa7:c6d7:0:b0:415:a0fc:1dcd with SMTP id
 b23-20020aa7c6d7000000b00415a0fc1dcdmr6450173eds.266.1646562432464; 
 Sun, 06 Mar 2022 02:27:12 -0800 (PST)
Received: from [192.168.0.140] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 v10-20020a170906380a00b006a68610908asm3692555ejc.24.2022.03.06.02.27.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Mar 2022 02:27:11 -0800 (PST)
Message-ID: <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
Date: Sun, 6 Mar 2022 11:27:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform: Convert
 DT bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_022724_145529_8313481D 
X-CRM114-Status: GOOD (  18.24  )
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

T24gMDYvMDMvMjAyMiAxMDo0NywgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiBIaSBLcnp5c3p0
b2YsCj4gCj4gaGF2ZSBzZWVuIHNvbWUgd2FybmluZ3MgaW4gUm9icyBib3QgZm9yIGFybS4KPiAK
PiBpbWhvIGhhdmUgZml4ZWQgdGhlbSAoYW5kIHRoZSBpbmRlbnRpb24geW91J3ZlIG1lbnRpb25l
ZCBhbHJlYWR5IHNxdWFzaGVkKSBpbiBteSB0cmVlIFsxXS4KPiAKPiAgICAgYWRkIGNvbXBhdGli
bGVzIHVzZWQgdG9nZXRoZXIgd2l0aCBnZW5lcmljLWFoY2kKPiAgICAgICAtIG1hcnZlbGwsYmVy
bGluMi1haGNpCgpUaGlzIGlzIGZpbmUsIGp1c3QgbWVudGlvbiBpdCBpbiBjb21taXQgbXNnLgoK
PiAgICAgICAtIHFjb20sYXBxODA2NC1haGNpCj4gICAgICAgLSBxY29tLGlwcTgwNngtYWhjaQoK
VGhlc2UgeW91IG5lZWQgdG8gY29uc3VsdCB3aXRoIHFjb20tc2F0YS50eHQuIFRoaXMgY291bGQg
YmUgYSBmb2xsb3dpbmcKY29tbWl0IHdoaWNoIHdpbGwgaW50ZWdyYXRlIHFjb20tc2F0YS50eHQg
YW5kIHJlbW92ZSBpdC4gRWl0aGVyIHlvdSBoYXZlCmJpbmRpbmcgZG9jdW1lbnQgZm9yIGFsbCBk
ZXZpY2VzIG9yIHlvdSBjcmVhdGUgYSBjb21tb24gcGFydCwgbGlrZSBmb3IgVUZTOgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzIwMjIwMjIyMTQ1ODU0LjM1ODY0Ni0x
LWtyenlzenRvZi5rb3psb3dza2lAY2Fub25pY2FsLmNvbS8KaHR0cHM6Ly9naXRodWIuY29tL2ty
emsvbGludXgvY29tbWl0cy9uL2R0LWJpbmRpbmdzLXVmcy12MgoKVGhlIGNob2ljZSBkZXBlbmRz
IG1vcmUgb3IgbGVzcyBvbiBjb21wbGV4aXR5IG9mIGJpbmRpbmdzLCBJT1csIGhvdyBiaWcKYW5k
IGNvbXBsaWNhdGVkIGJpbmRpbmdzIHdvdWxkIGJlIGlmIHlvdSBjb21iaW5lIGV2ZXJ5dGhpbmcg
dG8gb25lIFlBTUwuCgpJbiB0aGUgY2FzZSBvZiBVRlMsIHRoZSBkZXZpY2VzIGRpZmZlciAtIGJ5
IGNsb2NrcywgcmVzZXRzLCBwaHlzIGFuZApzb21ldGltZXMgc3VwcGxpZXMuIFRoZXJlZm9yZSBp
dCBlYXNpZXIgdG8gaGF2ZSBvbmUgY29tbW9uIHNoYXJlZCBwYXJ0CmFuZCBzZXZlcmFsIGRldmlj
ZSBiaW5kaW5ncy4KCkFIQ0kgbG9va3MgbW9yZSBjb25zaXN0ZW50IC0gZXhjZXB0IHRoYXQgUXVh
bGNvbW0gLSBzbyBtYXliZSBiZXR0ZXIgdG8KaGF2ZSBvbmUgZG9jdW1lbnQuCgo+ICAgICBpbmNy
ZWFzZSByZWctY291bnQgdG8gMiAodXNlZCBpbiBvbWFwNS1sNC5kdHNpKQo+ICAgICBpbmNyZWFz
ZSBjbG9jay1jb3VudCB0byA1ICh1c2VkIGluIHFjb20tYXBxODA2NC5kdHNpKQoKVGhpcyB3b3Vs
ZCBuZWVkIGFsbE9mK2lmLgoKPiAKPiBjYW4gaSBzdGlsbCBhZGQgeW91IHJldmlld2VkLWJ5IHRv
IHY2PwoKS2VlcGluZyByZXZpZXdlZC1ieSB3b3VsZCBiZSBmaW5lIHdoZW4gYWRkaW5nIGNvbXBh
dGlibGVzIGFuZCBidW1waW5nCm1heEl0ZW1zLCBidXQgaW4geW91ciBjYXNlIHlvdSBuZWVkIHRv
IHJld29yayB0aGVzZSBiaW5kaW5ncy4gRWl0aGVyIGJ5Cmdyb3dpbmcgZG9jdW1lbnQgd2l0aCBz
ZXZlcmFsICJpZjoiIG9yIGJ5IHNwbGl0dGluZyB0aGVtLCBzbyBpdCB3aWxsIGJlCnNpZ25pZmlj
YW50IGNoYW5nZS4gU2tpcCBteSByZXZpZXcgdGhlbi4KCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHVi
LmNvbS9mcmFuay13L0JQSS1SMi00LjE0L2NvbW1pdHMvNS4xNy1uZXh0LTIwMjIwMjI1Cj4gCj4g
cmVnYXJkcyBGcmFuawo+IAo+IAo+PiBHZXNlbmRldDogU2Ftc3RhZywgMDUuIE3DpHJ6IDIwMjIg
dW0gMTg6NDMgVWhyCj4+IFZvbjogIktyenlzenRvZiBLb3psb3dza2kiIDxrcnp5c3p0b2Yua296
bG93c2tpQGNhbm9uaWNhbC5jb20+Cj4+Cj4+IFRoYW5rcyBmb3IgdGhlIGNoYW5nZXMsIGFsbCBs
b29rIGdvb2QgZXhjZXB0IG5vdyBJIG5vdGljZWQgdGhhdAo+PiBpbmRlbnRhdGlvbiBvZiBleGFt
cGxlIGlzIHVudXN1YWwuIEl0J3Mgbm90IGNvbnNpc3RlbnQuIFN0YXJ0cyB3aXRoIGZvdXIKPj4g
c3BhY2UgKGNvcnJlY3QpIGJ1dCB0aGVuIGdvZXMgdG8gNyBzcGFjZXMuIFBsZWFzZSBhZGp1c3Qg
ZW50aXJlIGV4YW1wbGUKPj4gdG8gdXNlIDQgc3BhY2VzIGluZGVudGF0aW9uLgo+Pgo+PiBXaXRo
IHRoYXQ6Cj4+Cj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yu
a296bG93c2tpQGNhbm9uaWNhbC5jb20+Cj4gCj4gCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
