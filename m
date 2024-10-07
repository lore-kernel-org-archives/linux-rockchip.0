Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D89CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 08:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYl1LSruK7f24eCHRrkl0e7VkxgQXzSAHINg1Jjvn2s=; b=HyFWjJBWoVvutY
	48Jyt7YW7M+w/KwAxyv+FH/FcwgYfpf3xXy4E0ShXd0V/hhWTsUxlPb0pX/gbJ2ZC7UgaBFlS7lV6
	vU+5S5hbTWrtbnX3/bXLTq/gOvarCThLM+N+Luj5tfZOQcpkL1N0SqH4EgmDBx4Asehv2RmKaaT4d
	3k3kpBECk8A284MOQSaZxm7TIvZCBPRxvppxgpTey5BoiPq7zG3Rn2KRg/bRSwdAApGLJd4gLM98n
	70qGIaKM2XYO6rBrX8cAXoAf4XP9LXKVjvwHFT+TBXposONEZWDQYcEqozQE3CtVIe61nIXCePFmO
	ft7pEbWrI+XIlEKQKE+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxiyO-00000001j9w-49gB;
	Mon, 07 Oct 2024 08:20:09 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxiA4-00000001azx-3fca
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 07:29:37 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7ea0ae67df5so515936a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2024 00:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728286088; x=1728890888; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8xf4nb6Pix9H89WSsuapIHbgUS+ZIGtX44BrlhQ7Fec=;
        b=vj9iGRZKlwEg6WtdkTQM4TYn6RW4yu/ozRBdEUfmdZoYwT9Nu+tdCVSxsF+Z8X9lin
         a8bMIAWd+AxT34jC5S/w2bZC5RQjxRcwb2cwSG5PKVhFx0QL0eU3aliKUf1aD7lMLXuG
         UhvOgKvOhonVTvAX7srRveJwfV9+sCKtqjE4IQaP8mKc6Tb9kWZpYDzd08wNYH8/5bJ/
         aIdZkFAFyjuStKCTJnWEwUQp4Vqh/5Hdt+K2ys98NSuuSdsE/kb71uma2s1506NW5+43
         bCEjb6s+iCC1G8I58QuGODhZTC52Wcjd4N6tUN0i+53YkmGjrMPJcV8Ghb5AEANva6Uk
         ZGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286088; x=1728890888;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xf4nb6Pix9H89WSsuapIHbgUS+ZIGtX44BrlhQ7Fec=;
        b=vKGiBwD3OEFnhl1NHn5dAYl7pKVr7ucMHuohyoT70UlTjR+QAx+scEzuhT9R1MmqON
         Jxxe4+q+71dctbrfLu2JW7elswS8qYoc2miMQC/mXmuZaiuDO7S25KK2y4GpT4iJ801i
         TRkevvjoLJDaLeGaR6Zn8EEYatXnryQAMxFL8Dy4CHLy1I89pXYmwOW0STgMNpH9GO3d
         1yjzWx26rwbr5CXLs2GYBZdgpBfkZ6uuVkuLwzU+pgvhdF5CZUXEikoxYg9dZEbHOdeu
         z8oi2Xf0ZBsUwtK46lpA+gOHuKaykfyNHwGfF5VKL0k4aFn2eHMwAwnD5u3B7OehzZFf
         FIhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiz5igyZfZSoAvKKPB3I4tsISeFFUOE/ROxCOfeS5JdVJEnkBoZWEX7g2HeYnVVe/NlEkigw5smeYHi/6W0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoMgf0oB8aogCMkPmRM3WsUKPn2cY4EoZUC2xjxx5gHNNUuC17
	sEovMrTxzQRZVm0FMj5oWpzV7p+oSIg/B3I1P6EeFdniMcSF/u1J78lNIgFzkA==
X-Google-Smtp-Source: AGHT+IE4vsB70/Js2mNC/jm/OlOLnmlRjsch0aMdPfUvIwGcelF/8McFXljHJJtSbxO6+LWzZ/6IsQ==
X-Received: by 2002:a05:6a21:3318:b0:1cf:4596:d486 with SMTP id adf61e73a8af0-1d6dfae63d3mr15538097637.47.1728286087803;
        Mon, 07 Oct 2024 00:28:07 -0700 (PDT)
Received: from thinkpad ([220.158.156.57])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e9f6c491e2sm4271918a12.77.2024.10.07.00.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 00:28:07 -0700 (PDT)
Date: Mon, 7 Oct 2024 12:57:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
Message-ID: <20241007072759.5pw6ophje7w3vg7c@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-12-dlemoal@kernel.org>
 <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
 <179ed297-1d06-480d-8095-7212cbde2ab1@kernel.org>
 <64421c0c-1d48-421d-8841-859695b5046d@kernel.org>
 <ec728ac4-ef63-47a2-9058-5c038003418e@kernel.org>
 <e1e2c852-ff59-4450-9236-d954d7dc86f3@kernel.org>
 <1e85bd5c-a733-40e7-9606-b655c4ff3b6e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e85bd5c-a733-40e7-9606-b655c4ff3b6e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_002808_937202_B0A72C23 
X-CRM114-Status: GOOD (  15.97  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDQ6MjI6MTdQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvNy8yNCAxNjowMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+
PiBJIGRvIG5vdCBzZWUgcmVzZXQtZ3Bpb3MgYmVpbmcgZGVmaW5lZCBpbiB0aGUgYmluZGluZ3Mg
KGNvbW1vbiwgaG9zdCBhbmQgZXApLgo+ID4+IHJlc2V0cyBhbmQgcmVzZXQtbmFtZXMgYXJlIGRl
ZmluZWQgdGhvdWdoIGJ1dCB0aGVzZSBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aAo+ID4+ICNQRVJT
VCBjb250cm9sLgo+ID4gCj4gPiBCaW5kaW5ncyBmb3IgYWxsIFBDSSBkZXZpY2VzLiBTZWUgcGNp
LWJ1cy1jb21tb24ueWFtbAo+IAo+IEdvdCBpdC4gQnV0IGluIHRoaXMgY2FzZSwgc2luY2UgZXAt
Z3Bpb3MgaXMgYWxyZWFkeSBkZWZpbmVkIGZvciB0aGUgUkMgaG9zdCBtb2RlCj4gY29udHJvbGxl
ciwgaXNuJ3QgaXQgc2ltcGxlciB0byBzaW1wbHkgbW92ZSB0aGF0IHByb3BlcnR5IHRvCj4gcm9j
a2NoaXAscmszMzk5LXBjaWUtY29tbW9uLnlhbWwgPwo+IAo+IEkgY2FuIG9mIGNvdXJzZSBpbnN0
ZWFkIHJlLXVzZSB0aGUgcmVzZXQtZ3Bpb3MgcHJvcGVydHkgZm9yIHRoZSBlbmRwb2ludCBtb2Rl
LAo+IGJ1dCB0aGF0IHdpbGwgbmVlZCBhIGJpdCBtb3JlIGNvZGUgaW4gdGhlIGRyaXZlci4KPiAK
PiBXaGljaCB3YXkgZG8geW91IHJlY29tbWVuZCA/Cj4gCgpQbGVhc2UgdXNlICdyZXNldC1ncGlv
cycgaW5zdGVhZC4gVXNpbmcgJ2VwLWdwaW9zJyBmb3IgdGhlIGVuZHBvaW50IGNvbnRyb2xsZXIK
ZG9lc24ndCBjb252ZXkgdGhlIGFjdHVhbCB1c2UuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
