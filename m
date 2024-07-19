Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 194BDC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 15:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PUM/drppW+qBTfmkK5ZBjp4cRjau4mKScV2i/YTfuc=; b=0O9hIaz/kJoXvI
	+pQxGkkIxCioONwHAhrCcF6yU4Neij97lIEQbofxWiJ5CR+PYUPdL2uzeB4ZYKotrGGV1MbWfAFRr
	lZrVtVAIuv4pf0Sra/zLU/Ky4AqCGEemjF2yg8cy3WsPSasBW+GrUnEMO7NAnIPxRsS19mjPxMRQE
	B1O+Gxg5ou4bq/Iv1208LXP5Wc9MOw/7ETNLPaVOAuvXPMAY4S8saX3afFxU5WE5R0PVtCFaTA5fH
	O7q7g0QLUh5nTvoV5lDD6Tw/LN4XRZzZDcSFQ/RzR8hfBNrz4dlVwBRySCEuX6vsxExh9yNbMkWVB
	Sk2Low67N3Ge4+CaecSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUpei-000000036om-0qlc;
	Fri, 19 Jul 2024 15:36:24 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUpeV-000000036nN-35rA
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jul 2024 15:36:23 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-449f23df593so7975991cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Jul 2024 08:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1721403369; x=1722008169; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2/0klvuVGtgDS9abJE4lmmD+PAfbpXL+FKyhH3c98Sg=;
        b=aaw+2X+8yV7WEsSgyuYtb/vlZUjrBiWyNnDEu7AZN8bXDGs7rN2IhGGei+gc7C2ZAV
         4o+Xg+ZSL3l1H6K9UemEcUHcAOVSg0XEZuqzv8RY+r/YNeuZfa7Sexz4BkBGxa2rCC3N
         xUNoKe5q2Kwj1SSja/DUcxJX4F4S10diM1XFpy/v2oCmIjBbPN3KBqGwUhuE/FXWNuj0
         8pDPQx3voKTx6trnK6LXeiiqp8LZKrQJwyybsuWMKtqyhx5EFMltAx/lXukqNuSA+ZnJ
         VnNsGE+U4Vbxeq3W4Y1braDVnDz36kcqR7ckmclSalQdMjGi7k/x8YodRS3t50+mpEK4
         TEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721403369; x=1722008169;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2/0klvuVGtgDS9abJE4lmmD+PAfbpXL+FKyhH3c98Sg=;
        b=opkNdOKQ9AYn+PqCln2zjeJxDYXVQl4rGp45MPcFXKnu+P96mjBMUPCW3Y2HasjQJk
         8+niE7lyN81ndWCJMkF/Xw9KQjIOFra177Ld64HT/rGTLLsmcByVSzI21gAIumsYs4iO
         VAyB95+N+yBuhbYbwqjMI4rzoplkZc9nKzISz2BcAc/Ot4Vmpxy/8bzWgakEcC2YQB0l
         3Pov1V72jPPV/XLVWx90fZ18RWtd3NfzZ4eDWySdi/iuakL1ydF1v/qdRZjixcJ8SI5S
         zX1A82LEL5xs+VryecozQRFBU8fJhHx8aR5+J5/XdOtcAtMnItl3UisBfnpKz0l/3SOA
         Tdwg==
X-Forwarded-Encrypted: i=1; AJvYcCWTivcIfMFE+XniOPmq2sYpznVRcMkpPFBp4UqFCKQPoDTSnmQ6TOcgn7GztlQIPVBig3tmBbX/JjaNT9+pk4NlFGiJp+leGGz13QSY9jGPtxeE
X-Gm-Message-State: AOJu0YxFHFlA7V3z3OY+Yv3nmwbgYX6Pvaukks+nkdpZXEek2vuGzxnJ
	ArKldYXqe+tnFegUaABAfydfnRbiLQYn5q5zN0E8+98becDIGF/JKsaem8I9lq0=
X-Google-Smtp-Source: AGHT+IHZp7BNDj9fxW/zyyX66aytU/LYHM1rzrFkUbWiel/Oy5IwtNqagwykSB1duU9OlITraqO8YQ==
X-Received: by 2002:ac8:5d8b:0:b0:446:5d60:5cf3 with SMTP id d75a77b69052e-44fa52616d2mr2072161cf.6.1721403368697;
        Fri, 19 Jul 2024 08:36:08 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:6720::7a9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44f9cda3513sm8509791cf.66.2024.07.19.08.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 08:36:08 -0700 (PDT)
Message-ID: <dc423e4144e1c9ea32f6adbaa8319e38f1443896.camel@ndufresne.ca>
Subject: Re: [PATCH v4 0/2] Enumerate all pixels formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Date: Fri, 19 Jul 2024 11:36:07 -0400
In-Reply-To: <2eec786d-f2b6-4445-87f4-4b6d162a2d9a@collabora.com>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
	 <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
	 <743e2589-c0df-461d-97d4-fafe78c334ea@collabora.com>
	 <98f5cd5c-cb9c-45ca-a7c7-a546f525c393@xs4all.nl>
	 <2eec786d-f2b6-4445-87f4-4b6d162a2d9a@collabora.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_083612_062641_5351ACD8 
X-CRM114-Status: GOOD (  11.67  )
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

SGksCgpMZSB2ZW5kcmVkaSAxOSBqdWlsbGV0IDIwMjQgw6AgMTU6NDcgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIGEgw6ljcml0wqA6Cj4gPiBXaGF0IGV4YWN0bHkgaXMgdGhlIHByb2JsZW0geW91
IHdhbnQgdG8gc29sdmU/IEEgcmVhbC1saWZlIHByb2JsZW0sIG5vdCBhIHRoZW9yZXRpY2FsCj4g
PiBvbmUgOi0pCj4gCj4gT24gcmVhbC1saWZlOiBvbiBhIGJvYXJkIHdpdGggMiBkaWZmZXJlbnQg
c3RhdGVsZXNzIGRlY29kZXJzIGJlaW5nIGFibGUgdG8gZGV0ZWN0IHRoZQo+IG9uZSB3aGljaCBj
YW4gZGVjb2RlIDEwIGJpdHMgYml0c3RyZWFtcyB3aXRob3V0IHRlc3RpbmcgYWxsIGNvZGVjLWRl
cGVuZGVudCBjb250cm9scy4KClRoYXQgbGVhbnMgdG93YXJkIGdpdmluZyBhbiBhbnN3ZXIgZm9y
IHRoZSBzZWxlY3RlZCBiaXRzdHJlYW0gZm9ybWF0IHRob3VnaCwKc2luY2UgdGhlIHNhbWUgZHJp
dmVyIG1heSBkbyAxMGJpdCBIRVZDIHdpdGhvdXQgMTBiaXQgQVYxLgoKRm9yIHRoZSB1c2UgY2Fz
ZSwgYm90aCBDaHJvbWl1bSBhbmQgR1N0cmVhbWVyIGhhdmUgYSBuZWVkIHRvIGNhdGVnb3JpemVk
CmRlY29kZXJzIHNvIHRoYXQgd2UgYXZvaWQgdHJ5aW5nIHRvIHVzZSBkZWNvZGVyIHRoYXQgY2Fu
J3QgZG8gdGhhdCB0YXNrLiBNb3JlCnBsYXRmb3JtcyBhcmUgZ2V0dGluZyBtdWx0aXBsZSBkZWNv
ZGVycywgYW5kIHdlIGFsc28gbmVlZCB0byB0YWtlIGludG8gYWNjb3VudAp0aGUgYXZhaWxhYmxl
IHNvZnR3YXJlIGRlY29kZXJzLgoKSnVzdCBsb29raW5nIGF0IHRoZSBjb2RlYyBzcGVjaWZpYyBw
cm9maWxlIGlzIGluc3VmZmljaWVudCBzaW5jZSB3ZSBuZWVkIHR3bwpjb25kaXRpb25zIHRvIGJl
IG1ldC4KCjEuIFRoZSBkcml2ZXIgbXVzdCBzdXBwb3J0IDEwYml0IGZvciB0aGUgc3BlY2lmaWMg
Q09ERUMgKGZvciBtb3N0IGNvZGVjIHRoaXMgaXMKcHJvZmlsZSB2aXNpYmxlKQoyLiBUaGUgcHJv
ZHVjZWQgMTBiaXQgY29sb3IgZm9ybWF0IG11c3QgYmUgc3VwcG9ydGVkIGJ5IHVzZXJzcGFjZQoK
SW4gdG9kYXkncyBpbXBsZW1lbnRhdGlvbiwgaW4gb3JkZXIgdG8gdGVzdCB0aGlzLCB3ZSdkIG5l
ZWQgdG8gc2ltdWxhdGUgYSAxMGJpdApoZWFkZXIgY29udHJvbCwgc28gdGhhdCB3aGVuIGVudW1l
cmF0aW5nIHRoZSBmb3JtYXRzIHdlIGdldCBhIGxpc3Qgb2YgMTBiaXQKKG9wdGlvbmFsbHkgOGJp
dCB0b28sIHNpbmNlIHNvbWUgZGVjb2RlciBjYW4gZG93bnNjYWxlIGNvbG9ycykgYW5kIGZpbmFs
bHkKdmVyaWZ5IHRoYXQgdGhlc2UgcGl4ZWwgZm9ybWF0cyBhcmUga25vdyBieSB1c2Vyc3BhY2Uu
IFRoaXMgaXMgbm90IGltcG9zc2libGUsCmJ1dCB2ZXJ5IHRlZGlvdXMsIHRoaXMgcHJvcG9zYWwg
d2UgdG8gdHJ5IGFuZCBtYWtlIHRoaXMgZWFzaWVyLgoKTmljb2xhcwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
