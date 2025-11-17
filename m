Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDCACEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 07:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAkdYsc5Hs2GLS8uoAPnDyBDlKm0i/v71yyzNMG0mQE=; b=pBXyzT2xMnZGKs
	HlklpUisrvp8CnJUA2jiBW4JFGwnzT4bSqnOkItc81++XwizFFU5ah63gl3nzBQynCX4uPXaIVKrC
	4MyPcg14JcEd58Jwlwyz0ydLerP3/W9+Vxep2MvKQ1nD3bMzGqaXpGijrT2pRmBef/R/VngKWxq+p
	TX5QQ9akqTRhlP7iugjprleWUsiVHfoaw2Hu7XvayU6zemv/XiW5MBy1FPlcIF+xUc5uvS/mhoido
	x6N3MVXbWP86XQlbDxx+I/F5jNXq+oabXUcnNxGh/tu++/ptnV+pMG6VhZ8HX/dWTVxcoojVQnctn
	MJBQR3irnpCt8v3IS8lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKtG9-0000000FZ8v-09jY;
	Mon, 17 Nov 2025 07:02:45 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKtG6-0000000FZ7j-0rsZ
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 07:02:43 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7aad4823079so3498071b3a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Nov 2025 23:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763362961; x=1763967761; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fASXZCo6zuX2fyCl4lSygWMZOBjiZpryb8F1RE8Zsso=;
        b=EFTk098tWFnhpRQeCfeorzWEATBcpJd+jnA3TxlIiV7rCntXLG86VrREb+g1sfpxoe
         wx8dCLm3dxbwo+xkW9zmc74D9WGWgYfkCE0QxzvbdOc+oQkIIy70WsEKdo8z9Gi8Utpb
         lMARqpwf0FYoZpsZ9V1nmKROIn12ceVrM1blFOIRpg7a/N4xzIWH9AHoCMMB1McYwwXF
         IzacFiLq3KnMHLW004RX1Yge3EbWlro2me4+FtdLDJM0oF7nZ2yJCQynw6YfPe6ClzwI
         TWStKR+ZKfiHXYv0sZ3n7ICWKoNgrqooOMpRHDZEDMfWlphBG7atSN1dTI1o1Zzf6whs
         psIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763362961; x=1763967761;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fASXZCo6zuX2fyCl4lSygWMZOBjiZpryb8F1RE8Zsso=;
        b=G2GEzLEj26DvAqUV/GutOUk5wJIGNO/H05kpybiBhtlQasy1gZv8O9brPIuISb2z7h
         yIEJjugN8QhKNuF3vqoqyRbC+IxmPu9SV4abK3jS6Emihw+hukZdtTEej1VySBZ2qMep
         uMfiAJCA88qCsRQXzSFXQRK+Gmb5Lsc9DfG7/5RyErPRVjby0ejQEKIz8QZDbbqEmPz0
         Eg9nxZ9mfn4AEk28vb6txWfwk0YpYVurmhy53/Bk0uZ8zocha/3kmXmVdaJ3pxKvRKku
         ddUklobNuG//xKTyokeB3vLdB7Q/06uE3qV0/vkNds6Fu0XB0pbZU5HqXG0lQ0BCsJrt
         BIZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWA0vfZ5cp90L5TQNYTlT0tU4L5KMprd6Ez6P7HO+7GYlsaEEmJc3auwsdAtJWqHrskZdPKRuAv96U9Ddz7BQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9lWTPPSbIMuNhaN+1zjcZdrwwSALz5b6UGIEhbwxYFLYx0wMP
	WUfz58pbMWiKpp74BfAzTNxp0uqbzzUU9ARZPdT3rZtYJ55zk5IEai/5
X-Gm-Gg: ASbGncv98TtTGJTxkkqT8AQBlTlfqhzR9mtT0YFYLfo8wdvDEZ4FznT597cBO4jt6m0
	zdkdq4l+P4+QXYncplejUYHWfCghrsWJNnCdkKBvyu7j4eLfe3CGtMGWEodQtk5WqtTKfiJ5bhT
	FTfL7SFzFT5LYaAqcyAtoSFe/1mQWNkOSlci1TByw3n2dPOOEjL/rNYhPHiwsd5qD7xfR7TcO/I
	l7GXv07oEyFrAa+6KHBnRLXzIkNAx1tVLRl9/5IbM9JNg2/F3z6TYzNl0OUmcvVlwFSEjB4H0hl
	RdkX9ISk67svuxUbILpqbHDlH+pd1gu616d+4aYvLTShm7j61HD2x12+TmlesumM3gSetxJAgG0
	8BGPRSGCldOJxd1xIuSkqGFTW9hNhY/Ct4lx/HWtmFH03lXJzMaJGYHeRWFnw35c2mKCYHmFc+V
	5gLyvhqgbH
X-Google-Smtp-Source: AGHT+IHfnm3IzWza8gHcE5HGBty9zF9EvqIvnvTqildA2ZM0zlu5AsSzDpAQGo3gcaH0YBBS76BNfQ==
X-Received: by 2002:a05:701b:2412:b0:11b:9386:825b with SMTP id a92af1059eb24-11b938684dfmr2055518c88.48.1763362960827;
        Sun, 16 Nov 2025 23:02:40 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885e3sm44795481c88.0.2025.11.16.23.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 23:02:40 -0800 (PST)
Date: Mon, 17 Nov 2025 04:02:28 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <aRrIhA1uv_aIneOc@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <8f3cc1c1-7bf7-4610-b7ce-79ebd6f05a6e@rock-chips.com>
 <257951b7-c22e-9707-6aba-3dc5794306bb@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <257951b7-c22e-9707-6aba-3dc5794306bb@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_230242_252178_58126AB2 
X-CRM114-Status: GOOD (  23.75  )
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

T24gTW9uLCBOb3YgMTcsIDIwMjUgYXQgMDQ6NTc6MTFBTSArMDEwMCwgRHJhZ2FuIFNpbWljIHdy
b3RlOgo+IEhlbGxvIFNoYXduIGFuZCBHZXJhbGRvLAo+IAo+IE9uIE1vbmRheSwgTm92ZW1iZXIg
MTcsIDIwMjUgMDQ6NDIgQ0VULCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4g
d3JvdGU6Cj4gPiDlnKggMjAyNS8xMS8xNSDmmJ/mnJ/lha0gMTc6MTAsIEdlcmFsZG8gTmFzY2lt
ZW50byDlhpnpgZM6Cj4gPiA+IEluIHJlY2VudCBpbnRlcmFjdGlvbnMgd2l0aCBTaGF3biBMaW4g
ZnJvbSBSb2NrY2hpcCBpdCBjYW1lIHRvIG15Cj4gPiA+IGF0dGVudGlvbiB0aGVyZSdzIGFuIHVu
a25vd24gZXJyYXRhIHJlZ2FyZGluZyA1LjAgR1QvcyBvcGVyYXRpb25hbAo+ID4gPiBzcGVlZCBv
ZiB0aGVpciBQQ0llIGNvcmUuIEFjY29yZGluZyB0byBTaGF3biB0aGVyZSdzIGdyYXZlIGRhbmdl
cgo+ID4gPiBldmVuIGlmIHRoZSBvZGRzIGFyZSBsb3cuIFRvIGNvbnRhaW4gYW55IGRhbWFnZSwg
bGV0J3MgY292ZXIgdGhlCj4gPiA+IHJlbWFpbmluZyBjb3JuZXItY2FzZXMgd2hlcmUgdGhlIGRl
ZmF1bHQgd291bGQgbGVhZCB0byA1LjAgR1Qvcwo+ID4gPiBvcGVyYXRpb24gYXMgd2VsbCBhcyBh
ZGQgYSBjb21tZW50IHRvIFJvb3QgQ29tcGxleCBkcml2ZXIgY29yZSwKPiA+ID4gZG9jdW1lbnRp
bmcgdGhpcyBkYW5nZXIuCj4gPiAKPiA+IEknbSBub3Qgc3VyZSBqdXN0IGFkZGluZyBhIHdhcm4g
d291bGQgYmUgYSBnb29kIGNob2ljZS4gQ291bGQgd2UgdG90YWxseQo+ID4gZm9yY2UgdG8gdXNl
IGdlbjEgYW5kIGFkZCBhIHdhcm4gaWYgdHJ5aW5nIHRvIHVzZSBHZW4yLgo+IAo+IEkgdGhpbmsg
dGhhdCBmb3JjaW5nIDIuNSBHVC9zIHdpdGggYW4gYXBwcm9wcmlhdGUgd2FybmluZyBtZXNzYWdl
Cj4gaXMgYSBnb29kIGlkZWEuICBUaGF0IHdvdWxkIGJlIGxpa2Ugc29tZSBxdWlyayB0aGF0IGdl
dHMgYXBwbGllZAo+IGF1dG9tYXRpY2FsbHksIHRvIHByZXZlbnQgZGF0YSBjb3JydXB0aW9uLCB3
aGlsZSB3YXJuaW5nIHBlb3BsZQo+IHdobyBhdHRlbXB0IHRvICJvdmVyY2xvY2siIHRoZSBQQ0ll
IGludGVyZmFjZS4KCkhpIFNoYXduIGFuZCBEcmFnYW4sCgpBbHJpZ2h0LCBJJ2xsIHNlbmQgdjIg
d2l0aCB0aGlzIHN1Z2dlc3Rpb24gaW4gbWluZC4gU28gdGhhdCBkcml2aW5nIHRoZQpjb3JlIGF0
IDUuMCBHVC9zIHdpbGwgcmVxdWlyZSBwYXRjaGluZyBhbmQgY29tcGlsaW5nIG93biBrZXJuZWwu
Cgo+IAo+ID4gTWVhbndoaWxlIGFtZW5kIHRoZSBjb21taXQgbWVzc2FnZSB0byBhZGQgYSByZWZl
cmVuY2UKPiA+IG9mIFJLMzM5OSBvZmZpY2lhbCBkYXRlc2hlZXRbMV0gd2hpY2ggc2F5cyBQQ0ll
IG9uIFJLMzM5OSBzaG91bGQgb25seQo+ID4gc3VwcG9ydCAyLjVHVC9zPwo+ID4gCj4gPiBbMV1o
dHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcvUm9ja2NoaXBfUksz
Mzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+IAoKU2hhd24sIFVSTHMgaGF2ZSB0aGUg
YmFkIGhhYml0IG9mIGNoYW5naW5nIG9yIHNpbXBseSBkaXNhcHBlYXJpbmcsIHNvIEkKZG9uJ3Qg
dGhpbmsgaXQncyBhIGdvb2QgaWRlYSB0byBwdXQgVVJMIGluIHRoZSBjb21taXQgbWVzc2FnZS4K
CkFsc28sIHRoZSBkYXRhc2hlZXQganVzdCBtZW50aW9ucyB0aGF0IFJLMzM5OSBzdXBwb3J0cyBv
bmx5IDIuNSBHVC9zLAppdCBkb2VzIG5vdCBtZW50aW9uIHBvc3NpYmxlIGRhbWFnZSBmcm9tIGRy
aXZpbmcgdGhlIGNvcmUgYXQgNS4wIEdUL3MuCgo+IEFsc28sIHJld29yZGluZyB0aGUgcGF0Y2gg
c3VtbWFyeSBhcyBmb2xsb3dzIGJlbG93IG1heSBiZSBnb29kLAo+IGJlY2F1c2UgdGhhdCB3b3Vs
ZCBwcm92aWRlIG1vcmUgZGV0YWlsczoKPiAKPiAgIFBDSTogcm9ja2NoaXA6IFdhcm4gYWJvdXQg
R2VuMiA1LjAgR1QvcyBvbiBSSzMzOTkgYmVpbmcgdW5zYWZlCj4gCj4gT3IsIGlmIHdlJ2xsIGdv
IHdpdGggdGhlIGF1dG9tYXRpYyBkb3duZ3JhZGluZywgbGlrZSB0aGlzOgo+IAo+ICAgUENJOiBy
b2NrY2hpcDogTGltaXQgUkszMzk5IHRvIEdlbjEgMi41IEdUL3MgdG8gcHJldmVudCBicmVha2Fn
ZQo+IAoKRHJhZ2FuLCB0aGVzZSBhcmUgZ29vZCBvbmVzLCB0aGFua3MuIFRob3VnaCBJIHRoaW5r
IEknbGwgb21pdCBHZW4xL0dlbjIKd29yZGluZyBzaW5jZSBJIGtub3cgaG93IG11Y2ggQmpvcm4g
ZGlzbGlrZXMgdGhvc2UgdGVybXMuCgpUaGFua3MsCkdlcmFsZG8gTmFzY2ltZW50bwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
