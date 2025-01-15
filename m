Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E3AC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 17:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GonUZXv0e04JJmDYpEpnF9nT83LQCH0h+EHnMf3nRxo=; b=f3s+XHMHyZ6IzV
	7uqCg8jo7doC1A7qXbwHLsTXh/ZSRWoc50FAVcuBmAo6hHoDEfabm2b0JFWqrkm8/aDMI1TSkWpoG
	Ih6ktM5Mr8RGCJrHboDofXJuyfKcrLk48hSN4w+JDxrPW3KOB9nD+8TIVabR2JVZxVTj4leUZA2KK
	Hjc/R08uIC5AYF00Iiy6btqeGHwPgpJ4mLWv5h1NpiWuoQ3u6jqOz2kLWYAAr6kK4tUrWKGDAEVpm
	7jgJOGfxA4OSzm6BBhu4h1erOBX5EnxpJDUjyNFz2eUc3mR+Vp0pixHtOGbFIv7nYfttZ/EZ4TCnx
	QcDfDhEc/PDazN0LNK4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7Y1-0000000CfWm-3Qpf;
	Wed, 15 Jan 2025 17:51:21 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7We-0000000CezZ-1bUO
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 17:49:57 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-21644aca3a0so156632185ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 09:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736963395; x=1737568195; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ijQN8N59Y2kmAV+5Q+OaToHQ2NsmsUTEcGS96ikItDU=;
        b=ISFT8LhV3uTOw6Aeqc3qxBFXrF7PzmybEkoUBQHCS+Nb+5qdSdEtNpr6sFpHuMSnDn
         ixHtqJ80Dq5IJaIJl8naRJzR1puQXW/h44Gd7UIol/LihDGkc4uxaDkEm57dO4cd2sEZ
         b8SXnNI+S0tJNZZUx7RzTrp/9uFZ2xIbcNb43ygU5OJoVXmde8LtHJuNU3bKxhsoo4Xn
         gmtbxqrQfRY+TPJjJBTO9E9OjBXELOP3B6xiekn3zgyHUlkb8BUxzxNHrY4tWHTFDo53
         kt8Qk8+1gR+BynIeAVEs5GqDBohmPe8Venaeao34w3j0nmbHtqF7oke8uP4p6cp7Z4ZG
         WBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736963395; x=1737568195;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ijQN8N59Y2kmAV+5Q+OaToHQ2NsmsUTEcGS96ikItDU=;
        b=OJtfa7Ut3y6URCDRNslmHHGfK5+MMOxttVfkzvgaanJcl8KbmtYl9pWxh00PFwlwb3
         cKCNS4bDRark0B47IVepBSTAqTRPUXFlPasr+nYhy1C7V8j77VYYMY2sVrNX3kpm25VX
         HyiEjQyQbnggCQ2SPRUrQgfTTgUnIqtGQ8vmffQBSj7cbAs5zxNd6mxJ7VHMiH9Jyd67
         5+1bKi16NyrkinCs0+dleHqSf0x0sb0sTHFfeMa9TouBZkiGaAmuHeNSLGOVqKepRbfy
         LQi05g5Pt4UidWIRAbAsJMkLE6aMRh18opYx1LM8DzqBmXlzXTA583DssqjZMYbS7drI
         WiOg==
X-Forwarded-Encrypted: i=1; AJvYcCUhWAx5MUpBI+FQmK7FFLFh3Hq70DeL5C1tFtQrphB0c0ytnqoyKAjAdMWYE42j8XvnCnTi4cxNd1HnBUIVMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLB+m2r0OLloXpMUEuz9Rmf1BOeUymo+f3pe+oMPlWz84PDxtp
	Agq6/+cYrL1cU1tUU6M7aN+2o1ZGAhlkdF1SF8qxEgznO4OgFLFQszND8rX9Cg==
X-Gm-Gg: ASbGncvLEj1NPSiHlKTTV1niF8LzYwi9gzKLLTlivZxCGLrZTD11uJsJ492a3PXDYHm
	qI/Da2K0F5LRH2SKk06MWgFpu+yVoPyII+hKhrTlQxsPscOqliaELuh3MaR+a6B/lUqr8bFpfZN
	6OQWUupaFIUnCHGUMNM1lnTPJ4eY866GeJWH42V6gGni4pZtc1FtCC3wPdVfP4XUfPxs9Au2JVZ
	qUQDl6oipambQR2aoAhL6K/Y/3E2iFqvP7eFGqaTPhax2cThqq6BoqYQSbvGNEa1ZY=
X-Google-Smtp-Source: AGHT+IGnU19XoiVl4FcDEe9hTH4O9Bmvstejs7dclj+OyDqpDeZQevJgsHyuy7kvgQQPWQmodh2BBA==
X-Received: by 2002:a17:902:f68b:b0:216:55a1:35a with SMTP id d9443c01a7336-21a83f9cbedmr425818135ad.30.1736963395489;
        Wed, 15 Jan 2025 09:49:55 -0800 (PST)
Received: from thinkpad ([120.60.139.68])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f12ff3fsm84488855ad.79.2025.01.15.09.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:49:53 -0800 (PST)
Date: Wed, 15 Jan 2025 23:19:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Anand Moon <linux.amoon@gmail.com>, Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <20250115174948.yippqwr5mekb6o4d@thinkpad>
References: <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <5a3e8fda-f9e4-4c2f-847b-93f521b8313b@lunn.ch>
 <CANAwSgSUuEvJb2Vn58o0i7Soo3jGzM8EYHvDtUTPxRHekCpruA@mail.gmail.com>
 <c94570db-c0af-4d92-935c-5cc242356818@lunn.ch>
 <CANAwSgQ_gojVxvi_OyHTyTSdzRrno=Yymn0AdEXyTHTgDTyFcA@mail.gmail.com>
 <Z3vGXrUIII4ixNnF@ryzen>
 <b49e6147-32c6-4239-bdba-72f25ef04a9f@lunn.ch>
 <CANAwSgQqPREeFQisQZXqB52+w+j54Bwq4RMiHf3qUTXmnTxCAw@mail.gmail.com>
 <c08f3d69-1f3d-49a6-96ac-0c2f990f9a8d@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c08f3d69-1f3d-49a6-96ac-0c2f990f9a8d@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_094956_412935_A67A0678 
X-CRM114-Status: GOOD (  18.33  )
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

T24gVHVlLCBKYW4gMDcsIDIwMjUgYXQgMDI6MTM6MzRQTSArMDEwMCwgQW5kcmV3IEx1bm4gd3Jv
dGU6Cj4gPiBJIHdhcyBqdXN0IHRyeWluZyB0byB1bmRlcnN0YW5kIHRoZSBjYWxsIHRyYWNlIGZv
ciBtZGlvIGJ1cyB3aGljaCBnb3QKPiA+IG1lIGNvbmZ1c2VkLgo+ID4gCj4gPiBbMF0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL1ozZktrVFNGRmNVOWdRTGdAcnl6ZW4vCj4gCj4gVGhlcmUg
aXMgbm90aGluZyBwYXJ0aWN1bGFybHkgdW51c3VhbCBpbiB0aGVyZS4gV2Ugc2VlIFBDSSBidXMK
PiBlbnVtZXJhdGlvbiBoYXMgZm91bmQgYSBkZXZpY2UgYW5kIGJvdW5kIGEgZHJpdmVyIHRvIGl0
LiBUaGUgZHJpdmVyCj4gaGFzIGluc3RhbnRpYXRlZCBhbiBNRElPIGJ1cywgd2hpY2ggaGFzIHNj
YW5uZWQgdGhlIE1ESU8gYnVzIGFuZCBmb3VuZAo+IGEgUEhZLiBUaGUgcGh5bGliIGNvcmUgdGhl
biB0cmllZCB0byBsb2FkIHRoZSBrZXJuZWwgbW9kdWxlIG5lZWRlZCB0bwo+IGRyaXZlIHRoZSBQ
SFkuCj4gCj4gSnVzdCBiZWNhdXNlIGl0IGlzIGEgUENJIGRldmljZSBkb2VzIG5vdCBtZWFuIGZp
cm13YXJlIGhhcyB0byBjb250cm9sCj4gYWxsIHRoZSBoYXJkd2FyZS4gTGludXggaGFzIG5vIHBy
b2JsZW1zIGNvbnRyb2xsaW5nIGFsbCB0aGlzLCBhbmQgaXQKPiBzYXZlcyByZWludmVudGluZyB0
aGUgd2hlZWwgaW4gZmlybXdhcmUsIGF2b2lkcyBmaXJtd2FyZSBidWdzLCBhbmQKPiBhbGxvd3Mg
bmV3IGZlYXR1cmVzIHRvIGJlIGFkZGVkIGV0Yy4KPiAKCk1vc3Qgb2YgdGhlIHRpbWUsIGl0IHdv
dWxkIGJlIGhhcmQgdG8gZGVmaW5lIHRoZSBwcm9wZXJ0aWVzIG9mIHRoZSBQQ0kgZGV2aWNlJ3MK
aW50ZXJuYWwgYnVzIGluIGRldmljZXRyZWUuIEZvciBpbnN0YW5jZSwgdGhlIHBpbmN0cmwvY2xv
Y2sgcHJvcGVydGllcyB3aGljaApsaW51eCBleHBlY3RzIGFyZSB0byBiZSBjb25uZWN0ZWQgdG8g
dGhlIGhvc3QgU29DLCBhbmQgbm90IHRvIHRoZSBQQ0kgZGV2aWNlJ3MKU29DICh1bmxlc3MgdGhl
IHdob2xlIGRldmljZSdzIFNvQyBpcyBkZWZpbmVkKS4KCk5vdCBzYXlpbmcgdGhhdCBpdCBpcyBu
b3QgcG9zc2libGUgYnV0IGFsbCwgYnV0IHZlcnkgcmFyZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
