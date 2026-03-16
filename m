Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BC0F53D7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 18:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vib1hsxpWp30jwNDNRsLxUejKZP/IZacKU8qji3W5jU=; b=pUlpOMFM9514yG
	EM8L0Etr+td8F6LWZOqGYidFG+osBnG0bSlTn54xYdaQ8JV7jvNC/8RL8959L/m8KLyyuG+ak5LMX
	EV+u1hd4i61MwMLiK4jGgBJ7xy9a5QhNPItqpPdqZ06ftHa39nSxUcao7mxerLsWDvF9lASe6njJx
	IPI/+fVYXAr944SPNSeOzqyT9cBy/N7ZLphKqGqIHj7DhuCZejVxojQa2tWQEG290POHWmbSET/CB
	kq1S6+ZCEmAQtFvLq31XDGhiycm0usmayHe/8wTDqyOHHz9KomWJ0XB8XOdYnCN+QaerVPPZdT+Jq
	F4wFGWGt+zqqUQDnCa3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Cis-00000004grD-0MIB;
	Mon, 16 Mar 2026 18:31:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Cir-00000004gqR-1BWO
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Mar 2026 18:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BNBEVCAdHGNat6EhquVBIDr5xmo+EfnKaRHucm6TIJk=; b=NAaA11RczcKHxGvcj6Nccs5cA1
	B3d/bzjEQO/Rq8gxJgEHMNoQNoU6VkKwu1r+lhTFxw3Cl7jvxLElbbEH9NgutIj8ctasim7W5q19a
	EZTN4aOd1TAT8HSbXWovLr/0zicg7rRmZYOiF2C6udvY5EtVApcfT6VNYCvyVCJKrw60pIgbwBVoG
	c8A1TxovwsV7bCv9KmX3SCXNZi3lagH8QwK5sd/JIKV6y5SwYVFEXDippDZEcwClHMvpaqN3Wvlp+
	kqITA/oVTzgvMrFH9J5aPC7msQteG/Qf7GTFIlAhO3TJYSzh559hjKZzwO0wRpERI9No0CBrB6WkW
	cHVoOWTQ==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Cin-00000007Sfk-1SBt
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 18:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773685877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BNBEVCAdHGNat6EhquVBIDr5xmo+EfnKaRHucm6TIJk=;
	b=QjBqYbcoVKpJhoYZJduqpFwTyPv0LXQMatumyt+zeA1hGEkISP9jSk8eoo2gHJrpaMIhrZ
	n3Q42AIR6/i/GzM3ZcMEI9wHL42QY5fNb0UKWS7QEoub30j3pXFNmMUVrrwSkMESo18vTJ
	1iwJsy/FHy8lG+2/1F00du+PQNe/QSw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773685878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BNBEVCAdHGNat6EhquVBIDr5xmo+EfnKaRHucm6TIJk=;
	b=eQALVMtQ0RKccaHYZF4KmLF1RM30kcQse3ZAoP1spbKuNInhNJ5mpvWxCfBnXZBOIFmbvc
	kkIn4IAK0I5i+nQTwI/7Mb2NJHxfaSJTHEFBSAtM4JwdFGa4UEb/C15pyVgDBO63/H+6RQ
	v+iS1ghD6J6gvr1d21iXP7iORKnAqtM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-687-VW2eHfaiOcSfDzT1eHNoEw-1; Mon, 16 Mar 2026 14:31:14 -0400
X-MC-Unique: VW2eHfaiOcSfDzT1eHNoEw-1
X-Mimecast-MFC-AGG-ID: VW2eHfaiOcSfDzT1eHNoEw_1773685874
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509114d7418so69371201cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 11:31:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773685874; x=1774290674;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BNBEVCAdHGNat6EhquVBIDr5xmo+EfnKaRHucm6TIJk=;
        b=MHcHwtsD6vEOh9gskgMXhk7dwnMEC27GfCw9WbrdWUOsU/0uc18oL+iJU60MDT+8In
         NMQCjOJ0cVtdCHv4Ua3ycCM1d1ZAY0+0Eo/S4KhNgnlc7NnqAw4O2fE0mjROckSnlukX
         lc6UetkDvL+ioUjXZhsn0jAT8ll5vBIy4Uw9Ucv772jiWb1YdtTa8+uKu1ksGSCrukdj
         2QFVYArTJM+Aoxv96gWkTybFCIxCXaAOzj2L+/tXHKVlcjQdnzFbtUElL1lq1BFm7VHK
         J1mv9X7Y0CMR7uw9HChe+P6ao/SsEAJ6lTl/sSmCRNUJycNLCkYiRkwWF72mhZ5uek+i
         2ZsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD2zdMU98TRp/Xg8/zDBfd8pGUEQO4Y1itLBcJIMEmUyI2+xh5i3fj0OorTa5OcX4YoMIbqpxtybrImz/TVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnLrkWvy9ODO0jfHchRH7Pbww+shga4RHMJMNibWj5RdUNPmoQ
	3MfhE/Q6YTJWYVrXx8mfsnUQZkWNFLXGiadfwV+vLfmdxquqBKwIb9pp3Jz5qxI8+pzK1tFuioY
	SYyUtBaVzAgwgJc9akVaHOnfkBgUKADdjZVDnFJq+4UpcMcYm4CTjTS7y4pB4zMCDZHRSAd0jCQ
	==
X-Gm-Gg: ATEYQzwl586SApXacDtBLDoNXVIZCgwXwolDKjNDId0r/q2kunPcXZih/9r9wgH9XNe
	jyY05+GrCSSbuGVstp8hMruJDTjJCKENRDk6+sVj2R5Dx6sABUQ47eMP/IJERya8SB5a0p5arpH
	h2mfCAzSKpehwrHr1O3YXtOx07pt1ZUtJO/R/1KR9OqclFzF3d1MG8m1QuNObOy3egufcho96a0
	R6Vvmo1Z2oVm96DqF2FQVRn61rRepeGCwAboZl+F8h+Iqq7kyNCVSNwKuvMf+4eMJctGtBnJLfY
	LLCnKVkj+0NwhMcWl2iFR7HIJ+cPdE+oP8P2h61CWLFJZPEoh9HLXidGtPQGGqQ4uhqQ+3t5/9Q
	t0+/wUwsDmFwjiSja88MQZXQD/G0qD3P6mnZrCLQ72+pJxDINzAwJPRW2tqKryUjhB6OP6pq4RE
	qnTLICW7j3kectFg==
X-Received: by 2002:a05:622a:15d3:b0:509:17e4:ceed with SMTP id d75a77b69052e-50957cb5a7amr187473411cf.9.1773685873609;
        Mon, 16 Mar 2026 11:31:13 -0700 (PDT)
X-Received: by 2002:a05:622a:15d3:b0:509:17e4:ceed with SMTP id d75a77b69052e-50957cb5a7amr187471881cf.9.1773685872774;
        Mon, 16 Mar 2026 11:31:12 -0700 (PDT)
Received: from thinkpad-p1.localdomain (pool-174-112-193-187.cpe.net.cable.rogers.com. [174.112.193.187])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5093a0ea244sm124136001cf.16.2026.03.16.11.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 11:31:12 -0700 (PDT)
Message-ID: <64d282fd94be1546df75d7df5b47eacc0479797a.camel@redhat.com>
Subject: Re: [PATCH net-next v9 0/6] net: stmmac: qcom-ethqos: add support
 for SCMI power domains
From: Radu Rendec <rrendec@redhat.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Bjorn
 Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn	 <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet	
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	
 <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>,
 Giuseppe Cavallaro	 <peppe.cavallaro@st.com>, Chen-Yu Tsai
 <wens@kernel.org>, Jernej Skrabec	 <jernej.skrabec@gmail.com>, Neil
 Armstrong <neil.armstrong@linaro.org>,  Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo
 <shawnguo@kernel.org>,  Fabio Estevam <festevam@gmail.com>, Jan Petrous
 <jan.petrous@oss.nxp.com>, s32@nxp.com, Mohd Ayaan Anwar	
 <mohd.anwar@oss.qualcomm.com>, Romain Gantois <romain.gantois@bootlin.com>,
  Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>,  Christophe
 Roullier <christophe.roullier@foss.st.com>, Bartosz Golaszewski
 <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,  Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
 linux-amlogic@lists.infradead.org, 	linux-mips@vger.kernel.org,
 imx@lists.linux.dev, 	linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	sophgo@lists.linux.dev,
 linux-riscv@lists.infradead.org, Bartosz Golaszewski	
 <bartosz.golaszewski@linaro.org>, Martin Blumenstingl	
 <martin.blumenstingl@googlemail.com>, Krzysztof Kozlowski	
 <krzysztof.kozlowski@oss.qualcomm.com>, Lad Prabhakar	
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Konrad Dybcio	
 <konrad.dybcio@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 14:31:08 -0400
In-Reply-To: <20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com>
References: <20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: X-XENnR1FVX3OJ2_wDuXUvOIB8n0KfDiKSL6UGW5DKQ_1773685874
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_183121_778588_B3B4FC42 
X-CRM114-Status: GOOD (  32.30  )
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

T24gTW9uLCAyMDI2LTAzLTE2IGF0IDEzOjA1ICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+IEFkZCBzdXBwb3J0IGZvciB0aGUgZmlybXdhcmUtbWFuYWdlZCB2YXJpYW50IG9mIHRo
ZSBEZXNpZ25XYXJlIE1BQyBvbgo+IHRoZSBzYTgyNTVwIHBsYXRmb3JtLiBUaGlzIHNlcmllcyBj
b250YWlucyBuZXcgRFQgYmluZGluZ3MgYW5kIGRyaXZlcgo+IGNoYW5nZXMgcmVxdWlyZWQgdG8g
c3VwcG9ydCB0aGUgTUFDIGluIHRoZSBTVE1NQUMgZHJpdmVyLgo+IAo+IEl0IGFsc28gcmVvcmdh
bml6ZXMgdGhlIGV0aHFvcyBjb2RlIHF1aXRlIGEgYml0IHRvIG1ha2UgdGhlIGludHJvZHVjdGlv
bgo+IG9mIHBvd2VyIGRvbWFpbnMgaW50byB0aGUgZHJpdmVyIGEgYml0IGVhc2llciBvbiB0aGUg
ZXllLgo+IAo+IFRoZSBEVFMgY2hhbmdlcyB3aWxsIGdvIGluIHNlcGFyYXRlbHkuCgpJJ20gc2Vl
aW5nIHNvbWUgd2VpcmQgYmVoYXZpb3Igd2l0aCB0aGlzIHZlcnNpb24uIFRoZSBwcm9iZSBwYXJ0
IGxvb2tzCmdvb2QgKGJ1dCBzZWUgYmVsb3cpLCBidXQgd2hlbiBJIHRyeSB0byBicmluZyBhbiBp
bnRlcmZhY2UgdXAsIGl0IGZhaWxzCndpdGggRVRJTUVET1VULiBUaGUgcmVsZXZhbnQgcGFydCBv
ZiB0aGUgc3RhY2sgdHJhY2UgbGVhZGluZyB0byB0aGUKZXJyb3IgaXMgdGhpczoKCmR3bWFjNF9k
bWFfcmVzZXQrMHgyMDgvMHgyMjAgW3N0bW1hY10Kc3RtbWFjX3Jlc2V0KzB4MmMvMHg2OCBbc3Rt
bWFjXQpzdG1tYWNfaW5pdF9kbWFfZW5naW5lKzB4MTA4LzB4NDAwIFtzdG1tYWNdCnN0bW1hY19o
d19zZXR1cCsweDVjLzB4NTM4IFtzdG1tYWNdCl9fc3RtbWFjX29wZW4rMHhjOC8weDJhMCBbc3Rt
bWFjXQpzdG1tYWNfb3BlbisweGNjLzB4MjM4IFtzdG1tYWNdCl9fZGV2X29wZW4rMHgxMzgvMHgy
YTgKCk5vdyBkd21hYzRfZG1hX3Jlc2V0KCkgaXMgdmVyeSBzaW1wbGUuIEl0IHNldHMgdGhlIHNv
ZnQgcmVzZXQgYml0IGluCnRoZSBETUFfQlVTX01PREUgcmVnaXN0ZXIsIHRoZW4gd2FpdHMgZm9y
IHRoZSBoYXJkd2FyZSB0byBjbGVhciBpdCwgYW5kCnRoYXQgbmV2ZXIgaGFwcGVucy4KCk5vdywg
Z2V0dGluZyBiYWNrIHRvIHRoZSBwcm9iZSBwYXJ0LCB0aGVyZSBpcyBvbmUgZXh0cmEgbWVzc2Fn
ZQooY29tcGFyZWQgdG8gbXkgcHJldmlvdXMgc3VjY2Vzc2Z1bCB0ZXN0IG9uIHY3KSwgd2hpY2gg
SSBzZWUgYXQgdGhlCnZlcnkgZW5kIG9mIHRoZSBwcm9iaW5nOgoKICBxY29tLWV0aHFvcyAyMzA0
MDAwMC5ldGhlcm5ldDogY2xrX2NzciB2YWx1ZSBvdXQgb2YgcmFuZ2UgKDB4ZmZmZmZmMDAKICBl
eGNlZWRzIG1hc2sgMHgwMDAwMGYwMCksIHRydW5jYXRpbmcKClRoaXMgaXMgYSBzYTg3NzVwIHJp
ZGUgYm9hcmQsIHNvIHRoZXJlIGFyZSB0d28gc3RtbWFjIGRldmljZXMuIEkgb25seQpzZWUgdGhh
dCBtZXNzYWdlIGZvciB0aGUgMm5kIG9uZSwgd2hpY2ggaXMgYWxzbyB0aGUgb25lIEknbSB0cnlp
bmcgdG8KZW5hYmxlLCBhbmQgd2hpY2ggZmFpbHMuCgpJIHJlYWxpemUgdGhpcyBtYXkgb3IgbWF5
IG5vdCBiZSByZWxhdGVkIHRvIHlvdXIgY2hhbmdlcy4gQnV0IHRoZXJlIGlzCm5vIHdheSB0byB0
ZXN0IG9uIGEgU0NNSS1wZCBib2FyZCB3aXRob3V0IHRoZW0uIEknbSBub3Qgc3VyZSBob3cKcmVs
ZXZhbnQgaXQgd291bGQgYmUgdG8gdGVzdCBvbiB0aGUgbm9uLVNDTUkgdmFyaWFudC4gSSdtIGFz
c3VtaW5nIHRoZQpETUEgcGFydCBzaG91bGQgd29yayB0aGUgc2FtZSB3YXkgKHJlZ2FyZGxlc3Mg
b2YgU0NNSS1wZCksIHNvIGlmIEkgY2FuCnJlcHJvZHVjZSBpdCB0aGVyZSwgYW5kIHNpbmNlIEkg
a25vdyBpdCB3b3JrcyBvbiBtYWlubGluZSBMaW51eCAodGhhdCdzCndoZXJlIEkgdGVzdGVkIHY3
KSwgSSBjb3VsZCBiaXNlY3QgYW5kIHNlZSB3aGljaCBjb21taXQgaW4gbmV0LW5leHQKYnJlYWtz
IGl0LiBJZiB5b3UgZG9uJ3QgaGF2ZSBhbnkgYmV0dGVyIGlkZWEsIGxldCBtZSBrbm93IGFuZCBJ
IGNhbgp0cnkuIE1lYW53aGlsZSwgSSdsbCBrZWVwIHBva2luZyBhdCB2OS4KClJhZHUKCj4gU2ln
bmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5h
cm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29s
YXN6ZXdza2lAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY5Ogo+IC0gUmVi
YXNlIG9uIHRvcCBvZiBjdXJyZW50IGxpbnV4LW5leHQgYWdhaW4KPiAtIExpbmsgdG8gdjg6IGh0
dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDMxMS1xY29tLXNhODI1NXAtZW1hYy12OC0wLTU4
MjI3YmNmMTAxOEBvc3MucXVhbGNvbW0uY29tCj4gCj4gQ2hhbmdlcyBpbiB2ODoKPiAtIFJlYmFz
ZSBvbiB0b3Agb2YgcmVjZW50IGNoYW5nZXMgaW4gbGludXgtbmV4dCB3aGljaCByZXF1aXJlZCBh
bgo+IMKgIGV4dGVuc2l2ZSByZXdvcmsKPiAtIERyb3AgcGFydGlhbCBSLWIgdGFncwo+IC0gTGlu
ayB0byB2NzogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwMzA2LXFjb20tc2E4MjU1cC1l
bWFjLXY3LTAtZDZhMzAxMzA5NGI3QG9zcy5xdWFsY29tbS5jb20KPiAKPiBDaGFuZ2VzIGluIHY3
Ogo+IC0gUmVzdG9yZWQgdGhlIGNvcnJlY3QgYXV0aG9yc2hpcCBhZnRlciBsZWFybmluZyBnaXQg
dXNlcyAubWFpbG1hcCBmb3IKPiDCoCB0aGUgLS1hdXRob3Igc3dpdGNoCj4gLSBSZWJhc2VkIG9u
IHRvcCBvZiBjaGFuZ2VzIGZyb20gUnVzc2VsbAo+IC0gRml4ZWQgcmVzb3VyY2UgbWFuYWdlbWVu
dCBpc3N1ZXMgaW4gZXJyb3IgcGF0aHMKPiAtIExpbmsgdG8gdjY6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyNjAxMTItcWNvbS1zYTgyNTVwLWVtYWMtdjYtMC04NmEzZDRiMmFkODNAb3Nz
LnF1YWxjb21tLmNvbQo+IAo+IENoYW5nZXMgaW4gdjY6Cj4gLSBGaXggJGlkIHZhbHVlIGluIHRo
ZSBiaW5kaW5ncwo+IC0gRHJvcCBwYXRjaCAzLzggZnJvbSB0aGUgc2VyaWVzCj4gLSBVcGRhdGUg
aW5pdC9leGl0IGNhbGxiYWNrIHNpZ25hdHVyZXMKPiAtIExpbmsgdG8gdjU6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNTExMDctcWNvbS1zYTgyNTVwLWVtYWMtdjUtMC0wMWQzZTNhYWYz
ODhAbGluYXJvLm9yZwo+IC0gTGluayB0byB2NjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8y
MDI1MTIxOS1xY29tLXNhODI1NXAtZW1hYy12Ni0wLTQ4N2YxMDgyNDYxZUBvc3MucXVhbGNvbW0u
Y29tCj4gCj4gQ2hhbmdlcyBpbiB2NToKPiAtIE5hbWUgdGhlIERUIGJpbmRpbmcgZG9jdW1lbnQg
YWZ0ZXIgdGhlIG5ldyBjb21wYXRiaWxlCj4gLSBBZGQgbWlzc2luZyBzcGFjZQo+IC0gTWFrZSB0
aGUgcG93ZXItZG9tYWlucyBsaW1pdHMgc3RyaWN0ZXIKPiAtIExpbmsgdG8gdjQ6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMDQtcWNvbS1zYTgyNTVwLWVtYWMtdjQtMC1mNzY2NjAw
ODdjZWFAbGluYXJvLm9yZwo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBSZW1vdmUgdGhlIHBoeXMg
cHJvcGVydHkgZnJvbSB0aGUgU0NNSSBiaW5kaW5ncwo+IC0gTWFyayB0aGUgcG93ZXItZG9tYWlu
LW5hbWVzIHByb3BlcnR5IGFzIHJlcXVpcmVkCj4gLSBTZXQgbWF4SXRlbXMgZm9yIHBvd2VyLWRv
bWFpbnMgdG8gMSBmb3IgYWxsIGV4aXN0aW5nIGJpbmRpbmdzIHRvCj4gwqAgbWFpbnRhaW4gdGhl
IGN1cnJlbnQgcmVxdWlyZW1lbnRzIGFmdGVyIG1vZGlmeWluZyB0aGUgdmFsdWUgaW4gdGhlCj4g
wqAgdG9wLWxldmVsIGRvY3VtZW50Cj4gLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjUxMDI3LXFjb20tc2E4MjU1cC1lbWFjLXYzLTAtNzU3NjdiOTIzMGFiQGxpbmFy
by5vcmcKPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gRHJvcCAncG93ZXInIGFuZCAncGVyZicgcHJl
Zml4ZXMgZnJvbSBwb3dlciBkb21haW4gbmFtZXMKPiAtIFJlYmFzZSBvbiB0b3Agb2YgUnVzc2Vs
bCdzIGNoYW5nZXMgdG8gZHdtYWMKPiAtIFJlYmFzZSBvbiB0b3Agb2YgZXZlbiBtb3JlIGNoYW5n
ZXMgZnJvbSBSdXNzZWxsIHRoYXQgYXJlIG5vdCB5ZXQKPiDCoCBpbiBuZXh0IChFMXZCNmxkLTAw
MDAwMDBCSVB5LTJRaTRAcm1rLVBDLmFybWxpbnV4Lm9yZy51aykKPiAtIExpbmsgdG8gdjI6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTAwOC1xY29tLXNhODI1NXAtZW1hYy12Mi0w
LTkyYmMyOTMwOWZjZUBsaW5hcm8ub3JnLwo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGaXggdGhl
IHBvd2VyLWRvbWFpbnMgcHJvcGVydHkgaW4gRFQgYmluZGluZ3MKPiAtIFJld29yayB0aGUgRFQg
YmluZGluZ3MgZXhhbXBsZQo+IC0gRHJvcCB0aGUgRFRTIHBhdGNoLCBpdCB3aWxsIGdvIHVwc3Ry
ZWFtIHNlcGFyYXRlbHkKPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyNTA5MTAtcWNvbS1zYTgyNTVwLWVtYWMtdjEtMC0zMmE3OWNmMWU2NjhAbGluYXJvLm9yZwo+
IAo+IC0tLQo+IEJhcnRvc3ogR29sYXN6ZXdza2kgKDYpOgo+IMKgwqDCoMKgwqAgZHQtYmluZGlu
Z3M6IG5ldDogcWNvbTogZG9jdW1lbnQgdGhlIGV0aHFvcyBkZXZpY2UgZm9yIFNDTUktYmFzZWQg
c3lzdGVtcwo+IMKgwqDCoMKgwqAgbmV0OiBzdG1tYWM6IHFjb20tZXRocW9zOiB1c2UgZ2VuZXJp
YyBkZXZpY2UgcHJvcGVydGllcwo+IMKgwqDCoMKgwqAgbmV0OiBzdG1tYWM6IHFjb20tZXRocW9z
OiB3cmFwIGVtYWMgZHJpdmVyIGRhdGEgaW4gYWRkaXRpb25hbCBzdHJ1Y3R1cmUKPiDCoMKgwqDC
oMKgIG5ldDogc3RtbWFjOiBxY29tLWV0aHFvczogc3BsaXQgcG93ZXIgbWFuYWdlbWVudCBmaWVs
ZHMgaW50byBhIHNlcGFyYXRlIHN0cnVjdHVyZQo+IMKgwqDCoMKgwqAgbmV0OiBzdG1tYWM6IHFj
b20tZXRocW9zOiBzcGxpdCBwb3dlciBtYW5hZ2VtZW50IGNvbnRleHQgaW50byBhIHNlcGFyYXRl
IHN0cnVjdAo+IMKgwqDCoMKgwqAgbmV0OiBzdG1tYWM6IHFjb20tZXRocW9zOiBhZGQgc3VwcG9y
dCBmb3Igc2E4MjU1cAo+IAo+IMKgLi4uL2JpbmRpbmdzL25ldC9hbGx3aW5uZXIsc3VuN2ktYTIw
LWdtYWMueWFtbMKgwqDCoMKgIHzCoMKgIDMgKwo+IMKgLi4uL2JpbmRpbmdzL25ldC9hbHRyLHNv
Y2ZwZ2Etc3RtbWFjLnlhbWzCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMyArCj4gwqAuLi4vYmlu
ZGluZ3MvbmV0L2FtbG9naWMsbWVzb24tZHdtYWMueWFtbMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oCAzICsKPiDCoC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9lc3dpbixlaWM3NzAwLWV0aC55
YW1sIHzCoMKgIDMgKwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2ludGVsLGR3bWFj
LXBsYXQueWFtbMKgIHzCoMKgIDMgKwo+IMKgLi4uL2JpbmRpbmdzL25ldC9sb29uZ3NvbixsczFi
LWdtYWMueWFtbMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKwo+IMKgLi4uL2JpbmRpbmdz
L25ldC9sb29uZ3NvbixsczFjLWVtYWMueWFtbMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMg
Kwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L254cCxkd21hYy1pbXgueWFtbMKgwqDC
oMKgIHzCoMKgIDMgKwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L254cCxscGMxODUw
LWR3bWFjLnlhbWwgfMKgwqAgMyArCj4gwqAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbnhw
LHMzMi1kd21hYy55YW1swqDCoMKgwqAgfMKgwqAgMyArCj4gwqAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcWNvbSxldGhxb3MueWFtbMKgwqDCoMKgwqDCoCB8wqDCoCAzICsKPiDCoC4uLi9i
aW5kaW5ncy9uZXQvcWNvbSxzYTgyNTVwLWV0aHFvcy55YW1swqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCA5OCArKysrKwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JlbmVzYXMscnpuMS1n
bWFjLnlhbWwgfMKgwqAgMyArCj4gwqAuLi4vYmluZGluZ3MvbmV0L3JlbmVzYXMscnp2MmgtZ2Jl
dGgueWFtbMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAzICsKPiDCoC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1swqDCoMKgIHzCoMKgIDMgKwo+IMKgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L3NucHMsZHdtYWMueWFtbMKgwqDCoMKgwqDCoMKgIHzCoMKg
IDUgKy0KPiDCoC4uLi9iaW5kaW5ncy9uZXQvc29waGdvLGN2MTgwMGItZHdtYWMueWFtbMKgwqDC
oMKgwqDCoMKgwqAgfMKgwqAgMyArCj4gwqAuLi4vYmluZGluZ3MvbmV0L3NvcGhnbyxzZzIwNDQt
ZHdtYWMueWFtbMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAzICsKPiDCoC4uLi9iaW5kaW5ncy9u
ZXQvc3RhcmZpdmUsamg3MTEwLWR3bWFjLnlhbWzCoMKgwqDCoMKgwqDCoCB8wqDCoCAzICsKPiDC
oC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zdG0zMi1kd21hYy55YW1swqDCoMKgwqDCoMKg
IHzCoMKgIDMgKwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Rlc2xhLGZzZC1ldGhx
b3MueWFtbMKgIHzCoMKgIDMgKwo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3RoZWFk
LHRoMTUyMC1nbWFjLnlhbWwgfMKgwqAgMyArCj4gwqAuLi4vYmluZGluZ3MvbmV0L3Rvc2hpYmEs
dmlzY29udGktZHdtYWMueWFtbMKgwqDCoMKgwqDCoCB8wqDCoCAzICsKPiDCoE1BSU5UQUlORVJT
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQv
c3RtaWNyby9zdG1tYWMvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKy0KPiDCoC4uLi9l
dGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1xY29tLWV0aHFvcy5jwqDCoMKgIHwgNDAxICsr
KysrKysrKysrKysrKysrLS0tLQo+IMKgMjYgZmlsZXMgY2hhbmdlZCwgNDk4IGluc2VydGlvbnMo
KyksIDcyIGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiBkYWMxMzE1YmY1NThlNDg5
NTY2NWFhMWMyNzhmZDMwMTEzY2ExMTlkCj4gY2hhbmdlLWlkOiAyMDI1MDcwNC1xY29tLXNhODI1
NXAtZW1hYy04NDYwMjM1YWM1MTIKPiAKPiBCZXN0IHJlZ2FyZHMsCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
