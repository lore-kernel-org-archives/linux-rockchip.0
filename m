Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32244CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 09:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptEe+dt0s2V3VCrmVB0tNFj6JHMSdxFRy5pGByBdZTY=; b=tIH9TUcMdYwxqf
	K3yLIP8XK/2NCMZd/2x3DjXUvD12FblZQm9l5iVbUm8K81T20ZevHvAHAvjSWsEK+3hRqwTW2eEPh
	hlFme4Mr/jaPG/IQj+3/gy/lLj8re4a12y9EY91PB7ZhfLlNm3QT2cxH57QE8ylPn0Q7K5aWdduMD
	lEjQafeYpIxm+R4+yU3eFpeM9orwdNeNZCiBC5iabJoTvXSz3Ns4/+9OkbLBunnrZBLguwlIb9g3T
	rdDNFMLsBP2wdDA8skosU3ccXIvC2uJQ0Ryau0SsTbHm24+05dVafDEHvCEeRzGrJNAXdVfA6lQho
	l8oFuDGk9qY6cjraNZsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upkgL-00000004WKh-2IGR;
	Sat, 23 Aug 2025 09:37:05 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upbOB-00000003fJF-0xAk
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Aug 2025 23:41:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 98e67ed59e1d1-32326789e06so2135640a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Aug 2025 16:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=relaxabath-com.20230601.gappssmtp.com; s=20230601; t=1755906102; x=1756510902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kUzhUK1ErmMAaPlkLohCsRQ1pRZvcDrNNSy1Nb1CERo=;
        b=THbPEufqnC9I8v27KYxKb9wo6a94PKyiV1BRtjk3IfvTo3GgXE3XpCbT5ZDMxOMSXu
         nRNky2vPMUXEwsXN7NxqRY+jf1s7EBWW1z94fpeUZYnK8NzzyVuWfh9mSCGjJ/8EJrr3
         Yqfib0OC6REdVjEN/60emIJEhBOUjA8JNYSb67+FOqPC7VSOJmMtwQuIBTU0txe8xzbB
         95lbW5aFTmOSclPuuveych//aL53ACIlut5eYbQT53cqcybbOz8NwK64N/QxWrMCXh2A
         b7LZAWwP4FhgovuIEK8DeGfatH8RXQLNMIOEOQD1hs7KdJIXQ54VhYaKCGKJaVU6ofKE
         d1ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755906102; x=1756510902;
        h=content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUzhUK1ErmMAaPlkLohCsRQ1pRZvcDrNNSy1Nb1CERo=;
        b=DsITpvm9pV50FqqWHzrQSAsWsk197Y/cLhZZrs3UciyqPS3yJcbdZOmkV3oYdvLu1E
         zmHCogwZcRRuiUBhWGEP4xUZtmzYlXIDUHFXH78/l6nviA3mFc8Jli784ieIuc7P33dx
         Q+O7ueV7cRyPFU7PHMk8i8cdcI53+TDj7dqMveFfDi8jAgHmzhFlw9jew4pJ34g7Byuy
         jGXogz6ywiyYWX2eMAwXboNrIEXCbn9ic9GeNEp94L8YwfeDCSFVE6EhhsoejAEkr9Nt
         exEGlOxtOAXa3xfCBPBFMSGxPMmZ7spkmAReKNgjS1TBxQBBLuOj8ys3hB07py4+kHvh
         sRhw==
X-Gm-Message-State: AOJu0YxzSevKbrcJvuluLrerx4AZCFdrP+a4olxBNr7xFjaPlU1Vflok
	alLQq4cwDci442/UJeIZ9KPZPaABKCwM68hfQF/zz8Yj7muCBifMx46PjVvVLNvV06yKnfOFTvn
	7TbQXsTGjfeo=
X-Gm-Gg: ASbGncv6Msuy+hDFFf7tBw2/m6gWZW6hCn9yHqgB5b3p3FH1HfK7V++G4jVs406GUpy
	TwY/0kjpgiM2XRfc5vksANA9G21BxXgWPNxMU04EtyM+StlSN+K+CnIEPsqnBwB4NBvKgq6vbhE
	21TL/+ZYHzZ1uHgmCI4U3PJfN4cteCOTNtTzGTveXqb/8Shon5wbK5wteFc2a4HGgxAaWDq1wT5
	4sxHuDjul4RxM1xJ1VSKX2I46OFgy3AxE9rZqWHmmvfdjJ1aHKszNConGSmm2qXisoC3/aZ8tRf
	RMO5uzU3qtA2Crj+XM5AluqQB1OtwPLS/PWBdhzgJG4SeLWPInHEo61BnmB8fi+mObRUfXUVAru
	aF/Nc4fNf6xfsT1ISy0JXUp9OT9l5PXwGvUtQsyxMUWofGt5xnFoch33f
X-Google-Smtp-Source: AGHT+IGrkGoTapT8lTGRyePY5/aKvnSlK8ioPGoxQCguQMqNPENlH8QSAH48KQDuwFuG8+jA0wbn+w==
X-Received: by 2002:a17:90b:4a81:b0:31f:2fed:7867 with SMTP id 98e67ed59e1d1-32518998362mr5900038a91.34.1755906101745;
        Fri, 22 Aug 2025 16:41:41 -0700 (PDT)
Received: from msej.it (ip68-8-246-202.sd.sd.cox.net. [68.8.246.202])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3254aa503dasm870865a91.15.2025.08.22.16.41.40
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Aug 2025 16:41:41 -0700 (PDT)
Message-ID: <68a90035.170a0220.dd45c.88e8@mx.google.com>
From: =?utf-8?B?44OX44Ot5oqV6LOH44Kz44Oz44K144Or44K/44Oz44OI?= <noreply304@relaxabath.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQ5a6f57i+44GC44KK44CR5pys5pel44Gu5YSq6Imv6YqY?=
	=?utf-8?B?5p+E44Go5Yip55uK56K65a6a44K/44Kk44Of44Oz44Kw?=
Date: Sat, 23 Aug 2025 07:41:37 +0800
X-Priority: 3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_164143_505111_0D25FE4B 
X-CRM114-Status: UNSURE (   1.36  )
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

5bmz57Sg44KI44KK44GK5LiW6Kmx44Gr44Gq44Gj44Gm44GK44KK44G+44GZ44CCDQrmoKrlvI/j
g6Hjg7Pjgr/jg7wg5rGg55Sw6LOi5q2j44Gn44GZ44CCDQoNCvCfk4wg5pys5pel44Gu5o6o5aWo
77yI5YSq6Imv6YqY5p+E77yJIOKAlCAyMDI15bm0OOaciDIz5pelDQrpipjmn4TvvJrvvIg3MzU2
77yJ44Os44OD44OG44KjDQoNCuKWoCDmjqjlpajosrfku5jjg6zjg7PjgrjvvJoyNDB+Mjcw5YaG
DQrilqAg5pCN5YiH44KK55uu5a6J77yI5Y+C6ICD77yJ77yaMjEw5YaGDQrilqAg5Yip55uK55uu
5qiZ77yaDQrnrKzkuIDnm67mqJnvvJozMjDlhoYNCuesrOS6jOebruaome+8mjM4MOWGhg0KDQri
lqAg5o6o5aWo55CG55Sx77yI6KaB54K577yJDQrjg7vnm7Tov5HmoKrkvqHjgYzvvIszLjI177yF
44Gu5oCl6aiw44Gr44KI44KK44CB44Oe44O844Kx44OD44OI44Gu5rOo55uu6YqY5p+E44Go44GX
44Gm5rWu5LiK5Lit44Gn44GZDQrjg7vmiJDplbfmnJ/lvoXjga7jgYLjgovmpa3nqK7jgavlsZ7j
gZfjgIHjg4bjgq/jg4vjgqvjg6vnmoTjgavjgoLlvLfjgYTkuIrmmIfjg4jjg6zjg7Pjg4njgYzn
orroqo3jgafjgY3jgb7jgZnjgIINCuODu+S4i+WApOOBruWgheOBleOCguimi+OCieOCjOOAgeef
reacn+OAnOS4reacn+OBp+OBruOBleOCieOBquOCi+S4iuaYh+S9meWcsOOBjOacn+W+heOBleOC
jOOBvuOBmeOAgg0K44O75biC5aC05YWo5L2T44GM5aCF6Kq/44Gq5rWB44KM44Gr44GC44KL44Gq
44GL44CB5rWu5LiK44GX44Gf6YqY5p+E44Go44GX44Gm6L+944GE6aKo44KS5Y+X44GR44Gm44GE
44KL54K544KC5aW95p2Q5paZ44Gn44GZ44CCDQrjg7vnj77lnKjjga7moKrkvqHjga/nm7jlr77n
moTjgavlibLlronjgajoqZXkvqHjgafjgY3jgIHjg4bjgq/jg4vjgqvjg6vpnaLjgafjgoLkuIrm
mIfjg4jjg6zjg7Pjg4njgYznorroqo3jgafjgY3jgovnirbms4HjgafjgZnjgILnn63mnJ/jgJzk
uK3mnJ/jgafjga7kuIrmmIfkvZnlnLDjgpLmnJ/lvoXjgZfjgabjgYTjgb7jgZnjgIINCg0K4pag
IOaKleizh+WIpOaWreOBruODneOCpOODs+ODiA0K44O75pys5o6o5aWo44Gv5b2T5pel44Cc5pWw
5Za25qWt5pel44KS5oOz5a6a44GZ44KL55+t5pyf44OI44Os44O844OJ44Gn44GZ44CC5Y2z5pmC
5Y+N5b+c44KS5YmN5o+Q44Gr44GX44Gf44Ki44Kv44OG44Kj44OW6YGL55So44KS44GK44GZ44GZ
44KB44GX44G+44GZ44CCDQrjg7vjg6rjgrnjgq/nrqHnkIbvvIjmkI3liIfjgoroqK3lrprvvInj
ga/lv4XjgZrooYzjgaPjgabjgY/jgaDjgZXjgYTjgIINCg0K8J+UlCDmnKzml6XkuK3jga7os7zl
haXjgpLjgYrli6fjgoHjgZfjgb7jgZnjgIINCuaXouOBq+OBlOizvOWFpea4iOOBv+OBruaWueOB
r+OAgeizvOWFpeeUu+mdou+8iOOBvuOBn+OBr+S/neacieeUu+mdou+8ieOBruOCueOCr+ODquOD
vOODs+OCt+ODp+ODg+ODiOOCkkxJTkXjgafpgIHku5jjgY/jgaDjgZXjgYTjgILnm67mqJnkvqHm
oLzliLDpgZTmmYLjgavov4XpgJ/jgavliKnnm4rnorrlrprjga7jgr/jgqTjg5/jg7PjgrDjgpLj
gZTmoYjlhoXjgYTjgZ/jgZfjgb7jgZnjgIINCg0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
DQrilqAg54Sh5paZ44Gu6YqY5p+E6YWN5L+h44O75YCL5Yil55u46KuH77yITElORe+8ieOBq+OB
pOOBhOOBpu+8iOOBlOahiOWGhe+8iQ0K56eB44Gv5pel44CF44CB5Y6z6YG46YqY5p+E44Gu5YiG
5p6Q44KE5aOy6LK344K/44Kk44Of44Oz44Kw44Gu6YWN5L+h44KSTElOReOBp+ihjOOBo+OBpuOB
hOOBvuOBmeOAgg0KTElOReOBq+OBlOeZu+mMsuOBhOOBn+OBoOOBj+OBqOOAgeS4i+iomOOBruOC
teODvOODk+OCueOCkueEoeaWmeOBp+WPl+OBkeOCieOCjOOBvuOBmeOAgg0KDQrjg7vnn63mnJ/m
gKXpqLDpipjmn4Tjga7pgJ/loLHvvIjmnJ3jgqTjg4HphY3kv6HvvIkNCuODu+S4remVt+acn+OB
ruaIkOmVt+agquODlOODg+OCr+OCouODg+ODlw0K44O76YqY5p+E44GU44Go44Gu6LK344GE44O7
5aOy44KK44O75pCN5YiH44KK44Gu55uu5a6J5o+Q56S6DQrjg7vlgIvliKXnm7joq4fvvIjlhYjn
nYDjg7vpmZDlrprmnqDvvInjgoTpgJ/loLHjga7lhKrlhYjmoYjlhoUNCg0K4pagIOWPi+OBoOOB
oei/veWKoO+8iOOBmeOBkOeZu+mMsuWPr+iDve+8iQ0KTElORemAo+e1oeWFiO+8mg0KTElORSBJ
RO+8mmpiNDU3ODbjgIHjgb7jgZ/jga/jgZPjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfj
gaZRUuOCs+ODvOODieOCkuOCueOCreODo+ODs+OBl+OBpuWPi+mBlOOCkui/veWKoOOBl+OBpuOB
j+OBoOOBleOBhO+8miBodHRwczovL2xpbmUubWUvdGkvcC9iQ0QtRzg2VFpLDQoNCuKAu+WFrOW8
j0xJTkXjgbjnmbvpjLLjgYTjgZ/jgaDjgZHjgozjgbDjgIHku6XpmY3jga/jgZPjgaHjgonjgafo
v4XpgJ/jgavjgZTmoYjlhoXjgZfjgb7jgZnjgIINCuKAu+WIneWbnuOBr+ewoeWNmOOBquiHquW3
see0ueS7i++8iOS/neaciemKmOafhOODu+aKleizh+OCueOCv+OCpOODq+OBquOBqe+8ieOCkuOB
iumAgeOCiuOBj+OBoOOBleOBhOOAgg0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBDQrjgZTk
uI3mmI7ngrnjgoTlgIvliKXnm7joq4fluIzmnJvjga7mlrnjga/jgIFMSU5F44Gr44Gm44GK5rCX
6Lu944Gr44GU6YCj57Wh44GP44Gg44GV44GE44CCDQrjgZ3jgozjgafjga/jgIHoia/jgYTjg4jj
g6zjg7zjg4njgpLjgYrnpYjjgorjgZfjgabjgYrjgorjgb7jgZnjgIINCg0K5qCq5byP44Oh44Oz
44K/44O8IOaxoOeUsOizouatow0KTElORemAo+e1oeWFiO+8mg0KTElORSBJRO+8mmpiNDU3ODbj
gIHjgb7jgZ/jga/jgZPjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgaZRUuOCs+ODvOOD
ieOCkuOCueOCreODo+ODs+OBl+OBpuWPi+mBlOOCkui/veWKoOOBl+OBpuOBj+OBoOOBleOBhO+8
miBodHRwczovL2xpbmUubWUvdGkvcC9iQ0QtRzg2VFpLDQrilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
