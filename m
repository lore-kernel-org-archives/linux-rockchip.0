Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59809CAC5B9
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 18:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yR5qFsW14QX6+F1nF67BCIjteUSYThoyyQBIbZiTjag=; b=I8OlIuOiC0Sb4C
	roOdrkzpM484LweiFXTKJCf9bETHDZn6xNvGyE5C5IbJdDFoq88tod2bsdUgxvId8tNRiH0lLFVI2
	CZ96DyrihP/WzkkeIWWlShC/waUMeY1kDy6Dfz81dISboRVxvtMnE44gRgPuic1wWzaxHXyPflw1n
	tmxfZzR50njWC76fjwkz6fk0gmD14OLevnNU4EvKdm5wbflrw1KPCEc3fZnEFOt6VOxbDmWmCsDMm
	ZVwqZv6KswaxkCjDgxgopk4NROCLTHWdN/ybMksDkYAdhjdY5VqXpheyTCeumwqbJ8IvTGyNma0T/
	naFPISewvKrABCdHB/7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1qPI-0000000Bo8f-35k7;
	Thu, 25 Sep 2025 18:09:28 +0000
Received: from mail-oa1-x43.google.com ([2001:4860:4864:20::43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1qPG-0000000Bo74-0uZu
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 18:09:27 +0000
Received: by mail-oa1-x43.google.com with SMTP id 586e51a60fabf-3197f534179so1105674fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 11:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patriotwinner-com.20230601.gappssmtp.com; s=20230601; t=1758823765; x=1759428565; darn=lists.infradead.org;
        h=list-id:list-unsubscribe-post:list-unsubscribe
         :content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eip7MxeVWZc1MHLMv0fayXbPEQLe7BJJWTHVrXrrQM8=;
        b=raehMFKKinkJp3dsb/6mj9Pt9lecWnZQtUSJJgIBwqKjMwQcUtxLtq/47lfpa4lDy/
         prAjd/oD259h2Grf/ZAHYi8NipTUQ4BQOFR/Won1aLNRsDe0m5PI9b6QH/2jpChUErmE
         Ot1tRLrQsPwPMvtoZo54SIifknYG5x64DBGtfejE8wxiExpLwznOJryK8HoNiSej3j+M
         JZjEefUD9PrvvKvalksp6kRr51Al1P/e8wefRCxdsvHVeUbybaETP8vDKkewzUBSTYg6
         ULtwtDwb/RCgArvJthMoDi98K5dxE6HyKuS0gNIBZPOuuY6eppAjL7RJtUzgwvQg+Z3D
         xgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758823765; x=1759428565;
        h=list-id:list-unsubscribe-post:list-unsubscribe
         :content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eip7MxeVWZc1MHLMv0fayXbPEQLe7BJJWTHVrXrrQM8=;
        b=YTahZeW9/3RGFLtx+HNz4derRMJjFkYyywqoV3o+SbiE0tdorD6eWV8I/BPSWCqal7
         FdGy2i/TT9IVgUBQAZxlF/bDnQKxSfhXmuOtEt+eYjL/kjh8DYcGIJ6w/Y8Q1lAuNjh7
         i3q1Dki+c8aixzSyhbg20pItlHEEy5tmZuc8V+Ju5n1TT4npJXQag23iR4u5b0Ow5zPN
         BlcXOVpoYJ0RxYJKKXJjhksJOoEXUgqPo8/QPFE2iwyeWZ2Je9ZpIsUzujcwmxByWTT2
         gMtpMO2gwI5bpHcT8IKqo/qw+IcOgtWYNlrkoW0TEc3EBJuA5yvjB4J5qWM3q1GYJiBe
         Evow==
X-Gm-Message-State: AOJu0YzYY3ym9m1U9YhVGkbWcAmmEYiiwsStSydjLrK1r787X2BV7C+D
	0pdV7gavESNhCjelqpGdlnq3hb7KaEEqtGhsyzYt/NlZYRGlAwXoVe75kbAlsPPcIQfpZA1VJ/f
	f0DUdMw0MeIwOquAF
X-Gm-Gg: ASbGncvDonYOVvzRBNw3GWqBE8RKwsXlqKmsCKhdla914KczZC8FB9aM4u/zCSPjwcs
	i6if3K//k0BihOlTaGA6xQDmKL1IUEhVPnR0KzPN2iVHvn9kxXZSV/rWM0SwUj+htquukeXaB9d
	rotpmcrNoNnshvBVdsJRcQ8902toD2etorHhhIgJCs2t5MnrSa0Tv7jqxcXQWaGD4lEG8j1mDff
	9h9OdPLlpbwbVBmTtlxisNnW4yFpkQZAJuxoHulwQVqkfoHxdpflOTRNKcRTJXr3Ff6S04tDbhP
	0ZGeRB1Uj2mk+MarA7Z/lYmmu8cFOYwicwgo+tY+qwnpTZDB0k0tfNWwnPN2M8wg20w8p2guMMF
	y+ETUhnmjFBYGOvyqD7cXvUIsayYxy8TFeZuHGjJAM08eSRoA1vJ4+vh1tSF6P6suXJPPVoo1g6
	S2cQ==
X-Google-Smtp-Source: AGHT+IGbrSRd8wB3/ElDJs3YnzD1VZw09CNzyp+y1XWjTyYnxx7pvVHrpL2yU7BusOYXUpPbl3Yrwg==
X-Received: by 2002:a05:6a20:548d:b0:263:52cb:bc49 with SMTP id adf61e73a8af0-2cfe8990fb0mr5428309637.35.1758660611786;
        Tue, 23 Sep 2025 13:50:11 -0700 (PDT)
Received: from zqnrbfi.de (wsip-70-174-246-160.sd.sd.cox.net. [70.174.246.160])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b5541f0374csm7692109a12.49.2025.09.23.13.50.10
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Sep 2025 13:50:11 -0700 (PDT)
Message-ID: <68d30803.630a0220.3159f.c82e@mx.google.com>
From: =?utf-8?B?44GU6YCa55+l?= <noreply642@patriotwinner.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQ44Oe44ON44OD44Kv44K56Ki85Yi444CR6YWN5b2T6YeR?=
	=?utf-8?B?5YWl6YeR44Gu44GU6YCj57Wh77yI44GU56K66KqN44Gu44GK6aGY44GE?=
	=?utf-8?B?77yJ?=
Date: Wed, 24 Sep 2025 04:49:56 +0800
X-Priority: 3
X-Mailer: Coremail Copyright Tebie
MIME-Version: 1.0
X-Yahoo-Newman-Property: optinmailpf
X-Yahoo-Newman-Id: 22d2c0cb-63f4-4463-858a-d3a55acf426d
X-yahoo-newman-expires: 1757516400
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Z-SRV: Company=%E6%A5%BD%E5%A4%A9%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97;surl=https://corp.rakuten.co.jp;comp_siu=https://s.yimg.jp/images/mail/companymark/rakuten/;
Received: from mu-deliverer-felix-release (unknown [100.117.67.182])by mpoppo2107z.prod.jp.local (Rakuten MTA) with ESMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_110926_410827_F30D70EF 
X-CRM114-Status: UNSURE (   2.61  )
X-CRM114-Notice: Please train this message.
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

5bmz57Sg44KI44KK44Oe44ON44OD44Kv44K56Ki85Yi444KS44GU5Yip55So44GE44Gf44Gg44GN
44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuOBk+OBruOBn+OB
s+OAgeOBiuWuouanmOOBruiovOWIuOWPo+W6p+OBq+mFjeW9k+mHkeOBruWFpemHkeOBjOeiuuiq
jeOBleOCjOOBvuOBl+OBn+OBruOBp+OBlOahiOWGheeUs+OBl+S4iuOBkuOBvuOBmeOAguOBiuaJ
i+aVsOOBp+OBmeOBjOOAgeS4i+iomOOBruaJi+mghuOBq+OBpuODreOCsOOCpOODs+OBhOOBn+OB
oOOBjeOAgeOAjOOBiuWPluW8leWxpeattOOAjeOBq+OBpuips+e0sOOCkuOBlOeiuuiqjeOBj+OB
oOOBleOBhOOAgg0KDQrilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIANCuKWoCDjg63jgrDjgqTjg7PvvIjjg57jg43jg4Pjgq/j
grnlhazlvI/vvIkNCmh0dHBzOi8vbW9lbml4Lmtpb25nbWFuLmNvbS9kaXZpZGVuZHMNCg0K4pag
IOOBlOazqOaEj+S6i+mghQ0K44O76YWN5b2T6YeR44Gu6YeR6aGN44O75pSv5omV5pel44O75a++
6LGh6YqY5p+E562J44Gv44CM44GK5Y+W5byV5bGl5q2044CN44Gr44Gm44GU56K66KqN44GP44Gg
44GV44GE44CCDQrjg7vlj43mmKDjgb7jgafjgavjgr/jgqTjg6Djg6njgrDjgYznlJ/jgZjjgovl
oLTlkIjjgYzjgZTjgZbjgYTjgb7jgZnjgILjgYLjgonjgYvjgZjjgoHjgZTkuobmib/jgY/jgaDj
gZXjgYTjgIINCg0K4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSADQrnmbrooYzvvJrjg57jg43jg4Pjgq/jgrnoqLzliLjmoKrl
vI/kvJrnpL4NCumHkeiejeWVhuWTgeWPluW8lealreiAheOAgOmWouadseiyoeWLmeWxgOmVt++8
iOmHkeWVhu+8ieesrDE2NeWPtw0K5Yqg5YWl5Y2U5Lya77ya5pel5pys6Ki85Yi45qWt5Y2U5Lya
44CB6YeR6J6N5YWI54mp5Y+W5byV5qWt5Y2U5LyaIOetiQ0K4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSADQoNCuKAu+acrOOD
oeODvOODq+OBr+mFjeS/oeWwgueUqOOBp+OBmeOAguOBlOi/lOS/oeOBhOOBn+OBoOOBhOOBpuOC
guWvvuW/nOOBhOOBn+OBl+OBi+OBreOBvuOBmeOBruOBp+OAgeOBlOS6huaJv+OBj+OBoOOBleOB
hOOAgg0KDQrku4rlvozjgajjgoLjgIHjg57jg43jg4Pjgq/jgrnoqLzliLjjgpLjgZTliKnnlKjo
s5zjgorjgb7jgZnjgojjgYbjgIHjgojjgo3jgZfjgY/jgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7j
gZnjgIIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
