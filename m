Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 11:17:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 763436023F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 11:17:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 763436023F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYCkC+r0wCDcvMUXi75aBUW9oZUtSM1t0CAmLnufm7w=; b=KiVcmIVgelgPuS
	1EKquXuUUAA2U/VK/+C7IyaNxdh3AGtbYO3jAtfoyjWbfNlEUg8joYFz8s+PKn/qEokDtcdHE4bXH
	dkWlHl1ZbihXFxEEVr1ysGkaD66CVUTB54TugZMLKBwAOQMXg1rKHCfzLh70w0naXIhZMPzB3ZBHL
	uMZMfJT3UflD3Nz90XGcJ1M6LZiZyk0kV5n9Epr403G4hRm/J6RBytP8NTRLTrOhIEtJOeqSGPu/K
	55gO5TJ15n1+OV9VfR37JLcw3jXEohsFhjNkyrKtRyvu+vHJRbi0mQN9ZbErdb1CNnE7ChVIujW/Z
	BtsMJ91E15FO5jllCO5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maFmh-00CXQn-D9; Tue, 12 Oct 2021 11:17:27 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maFmU-00CXNY-G6
 for linux-rockchip@lists.infradead.org; Tue, 12 Oct 2021 11:17:15 +0000
Received: by mail-wr1-x431.google.com with SMTP id m22so65975877wrb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Oct 2021 04:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lL1m8ubOE4rJ9x4Cnwu+s3E9xFxm3dGNjo3CZSr7LdI=;
 b=snB8vHN4P3c/+1If++iQbj27PlHrmOwweXgC6HkVm3Yb8os74JgB8kB/1HbieZiyON
 UtO/6l3zjWtO/Btya7tN0aemUEsauX0+4hlrT2ByaBl3YZSeo2HJY3KF888KNmfbCNby
 2vTVEEZlnsQ1FAfa+qEivWj3wP7JT+XMl5e+4XIyStq/5TgI/yJay0TB7GS+G/dHhlwR
 whjPEHdrYS+UNu26JQkoKPmK6DCVf2Wae706XLa2gBYgt3Myjzec7/BSZYogmbAzJ/5A
 +hBMf16fY6lufyaOJYS06XbWz7ug4WK++sTYD+3hGQr1e9SrwPgiy9vjiqqKSPg8yFXl
 ZwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lL1m8ubOE4rJ9x4Cnwu+s3E9xFxm3dGNjo3CZSr7LdI=;
 b=AZpHn8RdRLpZ6eOdd2xwzcaVcGPOjwwtb7r1iIniCeB1MO3VivaGBmpf079NrdlAxd
 p/No/U6upiIxyZq3ZopqN98SdQFNckrBqB7P/1KXOQ/9DBxhwZOPAW/iOlR/uOSCNbxE
 V1hQkaNc3f5UfpgAdSCj9TagtgjFgYBglmzuG6du+68Yjss2kmoZq5rMRsbYFi2nAJEv
 Lm2ClqL63ertoHAu40769xkXEutr3axf5vb8ay/VjtFE5ygE+praPCSGauv6QJNoInGu
 KJ/IIQMbE8t6PR/2dn6hcqyvfn9RqNh75plSrLJeWTDpWr6ZAjlxuvBPEZ8hSJL4zyNo
 edtQ==
X-Gm-Message-State: AOAM533KsTu/U09DsSvOuSt4szyCu3pcML4ewSTk8Nsk7bl2x9H8GMvj
 NMuxSE+IDa8AcnTAWNw6WaYucg==
X-Google-Smtp-Source: ABdhPJwwgGCTLSD2FwWK23w/DgmWmq2KbPBQiBQLf7DRHtZSbPuxVoje3euWrasIyd3G8poK6PSQEw==
X-Received: by 2002:adf:a745:: with SMTP id e5mr30974809wrd.406.1634037432625; 
 Tue, 12 Oct 2021 04:17:12 -0700 (PDT)
Received: from google.com ([95.148.6.175])
 by smtp.gmail.com with ESMTPSA id v10sm10955743wri.29.2021.10.12.04.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 04:17:11 -0700 (PDT)
Date: Tue, 12 Oct 2021 12:17:10 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: syscon: Add rk3368 QoS register
 compatible
Message-ID: <YWVutkR1lHe7DEy9@google.com>
References: <20210925090405.2601792-1-heiko@sntech.de>
 <20210925090405.2601792-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210925090405.2601792-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_041714_551750_4590F84F 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

T24gU2F0LCAyNSBTZXAgMjAyMSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IERvY3VtZW50IHJr
MzM2OCBjb21wYXRpYmxlIGZvciBRb1MgcmVnaXN0ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gLS0tCj4gY2hhbmdlcyBpbiB2MjoKPiAt
IG5ldyBwYXRjaAo+IAo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5
c2Nvbi55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKQXBwbGll
ZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExl
YWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
