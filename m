Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C20C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 13:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRbCVRhAb8psFxaKsyhKdv8QBoXjhNpM3mwIrClvQFg=; b=ubt3nBFhEsHY0Q
	9HVavOjkVPEJ7MFqq3jqF9ZCpOg4oTYcxhLNzcRM3bhDxXsYq69pevbKlPWYfTx16S0LkjYEcd1ht
	m0rjI2vMKiV1u8pLtooUYQYoHLiXzaCaGsOAIxP/7JTJctwqlC1OWnIbL5oyVM+d1YrOaCiD23uyn
	CDCLoTdxJ9UGOTL+UkKgs4akB9VFG1rLsMEjTbItZrsXa5jTu9TdsVFJX9i+JGau9MQW5nj1LF+pT
	ttI96DsE6dttlAU81jjVo2cCBx+rROGsgdvg1oLarB3S4hAhfJMefnZuDgCwfwfiBAwGjZCpaO/3T
	NVu5iqh1DvHCbB1gNuXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZC4W-00CORv-K9; Tue, 29 Mar 2022 13:39:44 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZC4T-00COQv-Lj
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 13:39:42 +0000
Received: by mail-qt1-x835.google.com with SMTP id bp39so15214428qtb.6
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 06:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=tPpKSwJDTiQu2sjMGweoZsTG1xECoNDnnovlQrFXi0M=;
 b=ngXzcXYr3VLU93q+PFtfdVbc6m/o8JZPfcyXHs/hlu4sngWknmhnHYX9BzZoXPhaTO
 Gib1W114ack8O/YacQ+98zxn+aa+Tim7jsQfsjLrm6Zf2NJc1P/FPUT5hZS2fyF6zESY
 FqxW5RDMFFj4Uap2Q0IPMBwZnvsJ/G5zFgNmWiIi5zH7SZD9wp1owMjM2uDH3qzCl9t1
 Mz//C12ZfzbjbQhx5GdERHy3t9KfIRUvPNZWsAmuXI0szqED8uv/GHibzcObAESLnxoJ
 ETJjRt9IZ/bdGd2o/dQsAsDBSJRbN/lW5wWx5KHly0HEqIGJF4yYQ47zQAy+nMXQlHu4
 jPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=tPpKSwJDTiQu2sjMGweoZsTG1xECoNDnnovlQrFXi0M=;
 b=HbAfMSPyPa+PmIkhX3v7n40AD2m2ykzP7rhJ8DD9tlst2RdBZhj07NDBrIwJMg0E++
 yfz2htGS6R74ZSP0kcEpN/K00ZTbrM+4aPbdOfYnLRNi2Vfq5uSw/VuWfOZUA+FFuRe6
 semoxpKuQgyr4UBz6MjfXHLMjXDpOJVqXHd7s8/f9ktCpVyMEJ6x+JlajbjeR0bmAVnm
 3jguU2+7m1h2qV7YnlmWSDGjORQcNyuDTAvhnroWYVA82MIYrm4MIcUVrYph50NCghda
 noS9mMiOaWRkEKnt1OTBp+YZhWjJM/n9hpGZM29cy8ESa8BBgc3Bs+PCt2EzTips8yrK
 VnEw==
X-Gm-Message-State: AOAM531tJt2zt/tDJY6A/HyBY/BeGgJWKhz0U8GZBkG/eY0oNJg/Oec8
 ZjRJxVGmnpn5GPNb/Nwqa/54eA==
X-Google-Smtp-Source: ABdhPJwFvvcHyL6sk2op7ok5D3neOdXRDaDWdU13bBRPyD2LNfnc6hSW/RNdei+LKXxfy9ynoHRTjg==
X-Received: by 2002:a05:622a:587:b0:2e2:38d6:ca75 with SMTP id
 c7-20020a05622a058700b002e238d6ca75mr27451666qtb.415.1648561180240; 
 Tue, 29 Mar 2022 06:39:40 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 b82-20020ae9eb55000000b0067b314c0fedsm10039714qkg.42.2022.03.29.06.39.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 06:39:39 -0700 (PDT)
Message-ID: <c158787c2950b4fe03477ac261067ca5600e7bc0.camel@ndufresne.ca>
Subject: Re: [PATCH] staging: media: hantro: Update TODO list
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sebastian Fricke <sebastian.fricke@collabora.com>, 
 linux-media@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:HANTRO VPU CODEC
 DRIVER" <linux-rockchip@lists.infradead.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>, open list <linux-kernel@vger.kernel.org>
Date: Tue, 29 Mar 2022 09:39:38 -0400
In-Reply-To: <20220326183715.67332-1-sebastian.fricke@collabora.com>
References: <20220326183715.67332-1-sebastian.fricke@collabora.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_063941_754542_3DFCBA51 
X-CRM114-Status: GOOD (  16.66  )
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

TGUgc2FtZWRpIDI2IG1hcnMgMjAyMiDDoCAxOTozNyArMDEwMCwgU2ViYXN0aWFuIEZyaWNrZSBh
IMOpY3JpdMKgOgo+IFZQOCBoYXMgYmVlbiBhZGRlZCB0byB0aGUgdUFCSSBieSAzNjMyNDBjZTFj
MDgKPiBWUDkgaGFzIGJlZW4gYWRkZWQgdG8gdGhlIHVBQkkgYnkgYjg4ZGJlMzhkY2E4Cj4gSDI2
NCBoYXMgYmVlbiBhZGRlZCB0byB0aGUgdUFCSSBieSA0NmEzMDlkMjc1MTcKPiAKPiBUaGUgbGFz
dCByZW1haW5pbmcgY29kZWMgdG8gYmUgYWRkZWQgdG8gdGhlIHVBQkkgaXMgSEVWQy4KPiBIaWdo
bGlnaHQgdGhlc2UgY2hhbmdlcyBpbiB0aGUgVE9ETyBsaXN0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFNlYmFzdGlhbiBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNvbT4KClJldmll
d2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL1RPRE8gfCA4ICsrLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vVE9ETyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vVE9ETwo+IGluZGV4IDFkN2ZlZDkzNjAxOS4uODQ4M2ZmNDgy
MTQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vVE9ETwo+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vVE9ETwo+IEBAIC0xLDYgKzEsMiBAQAo+
IC0qIFN1cHBvcnQgZm9yIFZQOCwgVlA5IGFuZCBIMjY0IGlzIHBsYW5uZWQgZm9yIHRoaXMgZHJp
dmVyLgo+IC0KPiAtICBHaXZlbiB0aGUgVjRMIGNvbnRyb2xzIGZvciB0aG9zZSBDT0RFQ3Mgd2ls
bCBiZSBwYXJ0IG9mCj4gLSAgdGhlIHVBQkksIGl0IHdpbGwgYmUgcmVxdWlyZWQgdG8gaGF2ZSB0
aGUgZHJpdmVyIGluIHN0YWdpbmcuCj4gLQo+IC0gIEZvciB0aGlzIHJlYXNvbiwgd2UgYXJlIGtl
ZXBpbmcgdGhpcyBkcml2ZXIgaW4gc3RhZ2luZyBmb3Igbm93Lgo+ICtUaGUgVjRMIGNvbnRyb2xz
IGZvciB0aGUgSEVWQyBDT0RFQyBhcmUgbm90IHlldCBwYXJ0IG9mIHRoZSBzdGFibGUgdUFCSSwK
PiArd2UgYXJlIGtlZXBpbmcgdGhpcyBkcml2ZXIgaW4gc3RhZ2luZyB1bnRpbCB0aGUgSEVWQyB1
QUJJIGhhcyBiZWVuIG1lcmdlZC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
