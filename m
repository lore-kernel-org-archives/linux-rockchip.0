Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C4ECC77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 02:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtMIfIFzcen7ERhjbA29ms3dYvo+1nrqG8JXNwL5pvM=; b=YqtNO959NKi8c5
	aaN3VPRVONo9S5Iz1WOYg/74/eoWDeqyArUCBm5WwxlxxXr6yL014FuxoZeBH2DGqndX9Y3yOpmqu
	pM2GTN6efO8nepZ0sM09JYeciNqRxDahsujPNsKREzqODbAe21Oqh7G66jDWrgTEZ1qsd5kBQyEe8
	nTIj6fNOnYnz3MpYZnzIok0IVOI1Qgbxr7dWXgpFMCjTdTJXIvblwMOn6Mfpm7rM9ZDjN5qoWETOU
	kSLIY/2zm4C04ZkNJq2F09gzFAHogiXDvzruJWWQbLf+GffaYkODtvp7SAWic+4BdcTBcaDl//06j
	p8gdyQ/+BMvoiOzUB5zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxIwQ-00Am2M-2p;
	Fri, 12 May 2023 02:55:34 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxIwM-00Am0y-1c;
	Fri, 12 May 2023 02:55:32 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4efe8b3f3f7so10721234e87.2;
        Thu, 11 May 2023 19:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683860128; x=1686452128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dkOUlUNxiR4Gqj0+EmYuULSRki0JxNp8SsnGkEdjwKw=;
        b=PpruK/NzGHjzRovvWCYvW7HqDD68KmOoIjPRjVBwwjOl44YKmS9LJw0bJlpO5wCaTK
         JYQMRTt8PUIg7Tt3sXx/BumOofEX1UyIXH2rVZ7HQ4xk8w/0TIePej2ODQWIhhjMLGCF
         ObsKQnai0HwA0gxPpanVkllqPWACWFvsyhk8otvSXkxJ7boKNh6rOvhXhhU7XGpKW3yF
         bnb3jZjGoJuviMp6XaP/FxIe9hwsqI+C+2qQBWPRGsJkiS6fP0ZvUhHR+JTm3yUIwJpq
         rSKT9UqKx0zvTFuela8XEHqJdseFq2qZbEhMjlCN21nk45Ltut9jjYaQ7C5U84jN7UFH
         YUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683860128; x=1686452128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dkOUlUNxiR4Gqj0+EmYuULSRki0JxNp8SsnGkEdjwKw=;
        b=ldMuC4IkO4C6kOKOeelWdDTE1JjfQc92prTBJJIgxZCP5GIWEZanuM7K56w8Ysfibw
         9TcgxrRv96Px648Lao84bjaNGzzZXB4zwDT/Q8Mb0it0ctTmOWT5OVwiCxwFUayzo04G
         KcQu14VCgP6lJLj8tRcK0I+67zsAFAcFtLq6LPHJHbO316WVbKSi5VdBq+1OV2DKqALK
         nCgezuufsmV4CV9LzQCbVqNJktp5yPUsg+jhSPMUUah6zii405u5gsJspfunYqEevhUD
         5rxwuHqDSD7fWiMiG1/4Kn2mw+qWWlK0K03/5/WDpqpkgeQY1D6wvJ6hFDumfYQ4U4OM
         2law==
X-Gm-Message-State: AC+VfDwDpeWKT8IrcQNg10PKtkCDaCrj+D0rxtKnfJRc8pMXJf2SMU+a
	Fh9hRJdtefX1bCmRLZDrnLw=
X-Google-Smtp-Source: ACHHUZ4dxW4iqzv/N28X1gKcL88SemTjJ65/wtcy0AZdHSmj4XHMTrDxPz8Icvt/RO3sRR4TuYCJgw==
X-Received: by 2002:ac2:488c:0:b0:4f1:4086:9384 with SMTP id x12-20020ac2488c000000b004f140869384mr3159987lfc.61.1683860127415;
        Thu, 11 May 2023 19:55:27 -0700 (PDT)
Received: from [192.168.2.145] (109-252-144-198.dynamic.spd-mgts.ru. [109.252.144.198])
        by smtp.googlemail.com with ESMTPSA id c26-20020ac244ba000000b004efae490c51sm1285288lfm.240.2023.05.11.19.55.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 19:55:26 -0700 (PDT)
Message-ID: <4a5ebc65-a384-a8df-c692-ca114f1a018d@gmail.com>
Date: Fri, 12 May 2023 05:55:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 02/20] iommu/terga-gart: Replace set_platform_dma_ops()
 with IOMMU_DOMAIN_PLATFORM
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Andy Gross <agross@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bjorn Andersson
 <andersson@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Orson Zhai <orsonzhai@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>, Krishna Reddy <vdumpa@nvidia.com>,
 Chen-Yu Tsai <wens@csie.org>, Will Deacon <will@kernel.org>,
 Yong Wu <yong.wu@mediatek.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Lu Baolu <baolu.lu@linux.intel.com>, Kevin Tian <kevin.tian@intel.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Steven Price <steven.price@arm.com>
References: <2-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
 <1db712d2-9e33-4183-2766-34e32f170507@arm.com> <ZFI/D6mnLKYpdIqx@nvidia.com>
 <1a995f30-31fe-354f-ddfe-e944fa36e7a0@arm.com> <ZFJlZ03lswl9uHD0@nvidia.com>
 <ZFJzKQcKNFHdIWqy@orome> <ZFKXz/HWFkYOJrgT@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <ZFKXz/HWFkYOJrgT@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_195530_559081_8C739D31 
X-CRM114-Status: GOOD (  38.35  )
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

MDMuMDUuMjAyMyAyMDoyMCwgSmFzb24gR3VudGhvcnBlINC/0LjRiNC10YI6Cj4gT24gV2VkLCBN
YXkgMDMsIDIwMjMgYXQgMDQ6NDM6NTNQTSArMDIwMCwgVGhpZXJyeSBSZWRpbmcgd3JvdGU6Cj4g
Cj4+PiBUaGUgb25seSB0aGluZyBpdCBkb2VzIGlzIGNhdXNlIGRtYS1pb21tdS5jIGluIEFSTTY0
IHRvIHVzZSB0aGUKPj4+IGRtYS1yYW5nZXMgZnJvbSBPRiBpbnN0ZWFkIG9mIHRoZSBkb21haW4g
YXBlcnR1cmUuIHNwcmQgaGFzIG5vCj4+PiBkbWEtcmFuZ2VzIGluIGFyY2gvYXJtNjQvYm9vdC9k
dHMvc3ByZC4KPj4+Cj4+PiBGdXJ0aGVyLCBzcHJkIGhhcmQgZmFpbHMgYW55IG1hcCBhdHRlbXB0
IG91dHNpZGUgdGhlIGFwZXJ0dXJlLCBzbyBpdAo+Pj4gbG9va3MgbGlrZSBhIGJ1ZyBpZiB0aGUg
T0Ygc29tZWhvdyBjaG9vc2VzIGEgd2lkZXIgYXBlcnR1cmUgYXMKPj4+IGRtYS1pb21tdS5jIHdp
bGwgc3RhcnQgZmFpbGluZyBtYXBzLgo+Pgo+PiBUaGF0IGFsbCBzb3VuZHMgb2RkLiBvZl9kbWFf
Y29uZmlndXJlX2lkKCkgYWxyZWFkeSBzZXRzIHVwIHRoZSBETUEgbWFzawo+PiBiYXNlZCBvbiBk
bWEtcmFuZ2VzIGFuZCB0aGUgRE1BIEFQSSB1c2VzIHRoYXQgdG8gcmVzdHJpY3Qgd2hhdCBJT1ZB
IGFueQo+PiBidWZmZXJzIGNhbiBnZXQgbWFwcGVkIHRvIGZvciBhIGdpdmVuIGRldmljZS4KPiAK
PiBZZXMsIGFuZCBhZnRlciBpdCBzZXRzIHVwIHRoZSBtYXNrIGl0IGFsc28gcGFzc2VzIHRoYXQg
cmFuZ2UgZG93biBsaWtlIHRoaXM6Cj4gCj4gIG9mX2RtYV9jb25maWd1cmVfaWQoKToKPiAJZW5k
ID0gZG1hX3N0YXJ0ICsgc2l6ZSAtIDE7Cj4gCW1hc2sgPSBETUFfQklUX01BU0soaWxvZzIoZW5k
KSArIDEpOwo+IAlkZXYtPmNvaGVyZW50X2RtYV9tYXNrICY9IG1hc2s7Cj4gCj4gCWFyY2hfc2V0
dXBfZG1hX29wcyhkZXYsIGRtYV9zdGFydCwgc2l6ZSwgaW9tbXUsIGNvaGVyZW50KTsKPiAKPiBX
aGljaCBldmVudHVhbGx5IGdvZXMgdG86Cj4gCj4gIGlvbW11X3NldHVwX2RtYV9vcHMoKQo+ICBp
b21tdV9kbWFfaW5pdF9kb21haW4oKQo+IAo+IFdoaWNoIHRoZW4gZG9lczoKPiAKPiAJaWYgKGRv
bWFpbi0+Z2VvbWV0cnkuZm9yY2VfYXBlcnR1cmUpIHsKPiAKPiBBbmQgaWYgbm90IHNldCB1c2Vz
IHRoZSBkbWFfc3RhcnQvc2l6ZSBwYXJhbWV0ZXIgYXMgdGhlIGFjdHVhbAo+IGFwZXJ0dXJlLiAo
IT8pCj4gCj4gU2luY2Ugc3ByZCBkb2VzIHRoaXMgaW4gdGhlIGlvbW11IGRyaXZlcjoKPiAKPiAJ
ZG9tLT5kb21haW4uZ2VvbWV0cnkuYXBlcnR1cmVfc3RhcnQgPSAwOwo+IAlkb20tPmRvbWFpbi5n
ZW9tZXRyeS5hcGVydHVyZV9lbmQgPSBTWl8yNTZNIC0gMTsKPiAKPiBBbmQgaXQgaXMgc2VyaW91
cyBhYm91dCBlbmZvcmNpbmcgaXQgZHVyaW5nIG1hcDoKPiAKPiAJdW5zaWduZWQgbG9uZyBzdGFy
dCA9IGRvbWFpbi0+Z2VvbWV0cnkuYXBlcnR1cmVfc3RhcnQ7Cj4gCXVuc2lnbmVkIGxvbmcgZW5k
ID0gZG9tYWluLT5nZW9tZXRyeS5hcGVydHVyZV9lbmQ7Cj4gCj4gCWlmIChpb3ZhIDwgc3RhcnQg
fHwgKGlvdmEgKyBzaXplKSA+IChlbmQgKyAxKSkgewo+IAkJCXJldHVybiAtRUlOVkFMOwo+IAo+
IFdlIG11c3Qgc2VlIHRoZSBkbWFfc3RhcnQvc2l6ZSBwYXJhbWV0ZXIgYmUgYSBzdWJzZXQgb2Yg
dGhlIGFwZXJ0dXJlCj4gb3IgZXZlbnR1YWxseSBkbWEtaW9tbXUuYyB3aWxsIHNlZSBtYXAgZmFp
bHVyZXMuCj4gCj4gSSBjYW4ndCBzZWUgaG93IHRoaXMgaXMgY2FuIGhhcHBlbiwgc28gaXQgbG9v
a3MgbGlrZSBvbWl0dGluZwo+IGZvcmNlX2FwZXJ0dXJlIGlzIGEgbWlzdGFrZSBub3QgYSBkZWxp
YmVyYXRlIGNob2ljZS4gSSdsbCBtYWtlIGEgcGF0Y2gKPiBhbmQgc2VlIGlmIHRoZSBTUFJEIGZv
bGtzIGhhdmUgYW55IGNvbW1lbnQuIElmIHRoZXJlIGlzIG5vIHJlYXNvbiBJCj4gY2FuIGdvIGFo
ZWFkIGFuZCBwdXJnZSBmb3JjZV9hcGVydHVyZSBhbmQgYWxsIHRoZSBkbWFfc3RhcnQvc2l6ZQo+
IHBhc3NpbmcgdGhyb3VnaCBhcmNoX3NldHVwX2RtYV9vcHMoKS4KPiAKPj4+IFRodXMsIEkgcHJv
cG9zZSB3ZSBqdXN0IHJlbW92ZSB0aGUgd2hvbGUgdGhpbmcuIEFsbCBkcml2ZXJzIG11c3Qgc2V0
Cj4+PiBhbiBhcGVydHVyZSBhbmQgdGhlIGFwZXJ0dXJlIGlzIHRoZSBwdXJlIEhXIGNhcGFiaWxp
dHkgdG8gbWFwIGFuCj4+PiBJT1BURSBhdCB0aGF0IGFkZHJlc3MuIGllIGl0IHJlZmxlY3RzIHRo
ZSBkZXNpZ24gb2YgdGhlIHBhZ2UgdGFibGUKPj4+IGl0c2VsZiBhbmQgbm90aGluZyBlbHNlLgo+
Pgo+PiBZZWFoLCB0aGF0IHNvdW5kcyByZWFzb25hYmxlLiBJZiB0aGUgYXBlcnR1cmUgcmVwcmVz
ZW50cyB3aGF0IHRoZSBJT01NVQo+PiBzdXBwb3J0cy4gVG9nZXRoZXIgd2l0aCBlYWNoIGRldmlj
ZSdzIERNQSBtYXNrIHdlIHNob3VsZCBoYXZlIGV2ZXJ5dGhpbmcKPj4gd2UgbmVlZC4KPiAKPiBB
cmd1YWJseSB3ZSBzaG91bGQgcmVzcGVjdCB0aGUgZG1hLXJhbmdlcyBhcyB3ZWxsLCBidXQgSSB0
aGluayB0aGF0Cj4gc2hvdWxkIGNvbWUgdXAgZnJvbSB0aGUgaW9tbXUgZHJpdmVyIHZpYSB0aGUg
Z2V0X3Jlc3ZfcmVnaW9ucygpIHdoaWNoCj4gaXMgdGhlIHVzdWFsIHBsYWNlIHdlIHJldHVybiBG
VyBvcmlnaW5hdGVkIGluZm9ybWF0aW9uLgo+IAo+PiBGb3IgVGVncmEgR0FSVCBJIHRoaW5rIHRo
ZXJlJ3MgaW5kZWVkIG5vIHVzZS1jYXNlcyBhdCB0aGUgbW9tZW50LiBEbWl0cnkKPj4gaGFkIGF0
IG9uZSBwb2ludCB0cmllZCB0byBtYWtlIHVzZSBvZiBpdCBiZWNhdXNlIGl0IGNhbiBiZSBoZWxw
ZnVsIG9uCj4+IHNvbWUgb2YgdGhlIG9sZGVyIGRldmljZXMgdGhhdCB3ZXJlIHZlcnkgbWVtb3J5
LWNvbnN0cmFpbmVkLiBUaGF0Cj4+IHN1cHBvcnQgbmV2ZXIgbWFkZSBpdCB1cHN0cmVhbSBiZWNh
dXNlIGl0IHJlcXVpcmVkIHNpZ25pZmljYW50IGNoYW5nZXMKPj4gaW4gdmFyaW91cyBwbGFjZXMs
IGlmIEkgcmVjYWxsIGNvcnJlY3RseS4gRm9yIGFueXRoaW5nIHdpdGggYSBkZWNlbnQKPj4gZW5v
dWdoIGFtb3VudCBvZiBSQU0sIENNQSBpcyB1c3VhbGx5IGEgYmV0dGVyIG9wdGlvbi4KPiAKPiBT
byB0aGUgYWN0dWFsIHVzZSBjYXNlIG9mIHRoaXMgSFcgaXMgdG8gbGluZWFyaXplIGJ1ZmZlcnM/
IGllIGl0IGlzIGEKPiBnZW5lcmFsIHNjYXR0ZXIvZ2F0aGVyIGVuZ2luZT8KPiAKPj4gVGhpcyBo
YXMgb2NjYXNpb25hbGx5IGNvbWUgdXAgaW4gdGhlIHBhc3QgYW5kIEkgc2VlbSB0byByZW1lbWJl
ciB0aGF0IGl0Cj4+IGhhZCBvbmNlIGJlZW4gcHJvcG9zZWQgdG8gc2ltcGx5IHJlbW92ZSB0ZWdy
YS1nYXJ0IGFuZCB0aGVyZSBoYWQgYmVlbiBubwo+PiBvYmplY3Rpb25zLiBBZGRpbmcgRG1pdHJ5
LCBpZiBoZSBkb2Vzbid0IGhhdmUgb2JqZWN0aW9ucyB0byByZW1hdmluZyBpdCwKPj4gbmVpdGhl
ciBkbyBJLgo+IAo+IERtaXRyeSwgcGxlYXNlIHNheSB5ZXMgYW5kIEkgd2lsbCByZW1vdmUgaXQg
aW5zdGVhZCBvZiB0cnlpbmcgdG8gY2FycnkKPiBpdC4gVGhlIGRyaXZlciBpcyBhbG1vc3QgMTAg
eWVhcnMgb2xkIGF0IHRoaXMgcG9pbnQsIEknbSBza2VwdGljYWwKPiBhbnlvbmUgd2lsbCBuZWVk
IGl0IG9uIGEgNi4yIGVyYSBrZXJuZWwuLgoKWW91IHByb2JhYmx5IG1pc3NlZCB0aGF0IHN1cHBv
cnQgZm9yIG1hbnkgb2YgMTAgeWVhcnMgb2xkIFRlZ3JhMi8zCmRldmljZXMgd2FzIGFkZGVkIHRv
IGtlcm5lbCBkdXJpbmcgbGFzdCB5ZWFycy4KClRoaXMgR0FSVCBpc24ndCB1c2VkIGJ5IHVwc3Ry
ZWFtIERSTSBkcml2ZXIsIGJ1dCBpdCdzIHVzZWQgYnkgZG93bnN0cmVhbQprZXJuZWwgd2hpY2gg
dXNlcyBhbHRlcm5hdGl2ZSBUZWdyYSBEUk0gZHJpdmVyIHRoYXQgd29ya3MgYmV0dGVyIGZvcgpv
bGRlciBoYXJkd2FyZS4KCklmIGl0J3MgdG9vIG11Y2ggYnVyZGVuIHRvIG1haW50YWluIHRoaXMg
ZHJpdmVyLCB0aGVuIGZlZWwgZnJlZSB0bwpyZW1vdmUgaXQgYW5kIEknbGwgY29udGludWUgbWFp
bnRhaW5pbmcgaXQgaW4gZG93bnN0cmVhbSBteXNlbGYuCk90aGVyd2lzZSBJIGNhbiB0ZXN0IHlv
dXIgY2hhbmdlcyBpZiBuZWVkZWQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
