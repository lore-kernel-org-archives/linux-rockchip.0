Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64DACA0FE7
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 22:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LLhxXfWIZT4NOni5eqJ07N4mHQtXYPcjYb2DigxMRng=; b=M1VyAd6d6eZ2/a
	818JGbEKydh/VUGdUat6pTy4XwXjR3bCClWYyugbOZkmWoNmYN7BIlbzAnAwxGenrN4XkGf0Kuv2G
	aEOT/qbg9hvhfJkErk7OA48fFFXHxVsL1MPdIbOcrmZ7EgC5DvKx4n++VPO54+rMVU5IWHVYr119N
	EjKXe4PKt8jsflQNuKfPUP/mLqBFzlAcDy9p2YXOgoYF6Anp6FbboSDbDfCR63dCDgPG+KAOj/BSQ
	00vVjz1NOZGrCSeucoTJtdcWPqeDBiIlcsCatpv142SIr2wXetzyELfp4UbQWG0PyH/IJuRP8PCEx
	qHRbB81H+X8KETVYcgXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqfTt-00000009uzD-3nA0;
	Mon, 25 Aug 2025 22:16:01 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqfSB-00000009ujn-1DCo
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 22:14:16 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 98e67ed59e1d1-32326e09f58so5828235a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Aug 2025 15:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=a2zpreview-com.20230601.gappssmtp.com; s=20230601; t=1756160054; x=1756764854; darn=lists.infradead.org;
        h=list-id:list-unsubscribe-post:list-unsubscribe
         :content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dktrT1hbKEW74xSwmoV5m0mIdxfpx+3fVdHUrMyqU9k=;
        b=KpRDA0XqwLvrp4WYh0pstLsbVzBlcXZ9cXbqDS+sc1STxCH/tDla/stjddsJWxv/JB
         kURe7gSjMoDnT5Pz4Ea2Ri66ZyGnkjWAkgIkD5CX33dDt6c+QghyggljDNgHK3kDAdc7
         tn0Fl26EblmiNDdY3UPX9Z5UZ7RPRQNmQTjdtd6h2nV3/UbE2qXeZe8E/sb18KKWelKG
         TNkkomxnDlgRlEyTNkTmS4PBxh7MdQy1rmr4+WzYnFN3h0XpoM953+BtkH0ivd0ojOzo
         GtNWnKU2asHHOVpQW71QcK5/X+YPP02WP9QzQv5CH8kdrHUE+trNXx1jNZrC3AQ57Hpz
         z+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756160054; x=1756764854;
        h=list-id:list-unsubscribe-post:list-unsubscribe
         :content-transfer-encoding:mime-version:date:subject:to:from
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dktrT1hbKEW74xSwmoV5m0mIdxfpx+3fVdHUrMyqU9k=;
        b=LPI5/5hnmXcsb5WlrhoKrXSiX4jWaS0Oyvyx9MpK/+3RgrZHo+9twM+FLD4VYS790X
         zZivL0T97t/NvdrSM5/T5RNs244LDpp7atU0adNW9+nrr/tNK7NM9ejKMIg+Lw1kCqXf
         J4SWq2RhY2bM497TNQBdRkaHS8nyPuBS6XeczSDZWREb+shQ9PETa423io+pOall1b4N
         AuwM5QOGdcY+7jVzkBH3FvRrAD348DThSEKGo6gh+j76Ljezzr9GZ48xKvBTkGXtmjv8
         +lZIhSFv7Auq6sIrAAs0A6mpXmCatDWwGr7iJ6QmaVlMXwhZzS7wRVexumquZCE6j6ZW
         g+qw==
X-Gm-Message-State: AOJu0Yw7MEX+3M7BlgA98JHnvcBr2y6P2u+y53By1DfpmyhrxnrqOVEg
	pLdO6QUIRA700b9B/EpKXwdZsUX0HSeHaqORGmLqA4StrDDf4oujb9ojI7ZQB7gUJkR8PtfyTfW
	a9YVGhfBVeBJgBg==
X-Gm-Gg: ASbGncuoULcq+xAXHqT0NbZ5u7h7V0+DQi56cMVBSmy4GQlBm7msgmTxttytpcwbKom
	aZMu9lpXyDoYDK2Im6pI6cBXgl4LF4GZErnOlesOdOJ+RE6SWKG4fzc4YiA2bBwXwiwTrxHqjxI
	KXPPG831g+S4A0Lr+fEzDcuo+g19u0zZ3mVDdds+JGnoIiUqMc5B+HR+RuHA27k2lI9oy4GaT0O
	vumxuJRAGUdu8Y+9GYnc5lmd2P4AK3hOXIDqCDPk0+YlMFS5gVefL6iAbnv62XWm647NgXuZ4nA
	kf1C1yCSv7sP5KrKs7DJqBtUgAiJ7tJrgMN03zESoa+GEBKT627CO5vpp9iNal01GM6tbZrMqqO
	EBbm+ySfq1yl97nz97mk3NQPsqLjqhAPJQOqDC+r8
X-Google-Smtp-Source: AGHT+IHdMeVpH8kKHyQdvzngu6lzWmJN/iymtNl3vtDeZ3WqKmVi0sE4Mu06NY903CYOPpG/BpXBVg==
X-Received: by 2002:a17:902:e847:b0:246:e621:96f2 with SMTP id d9443c01a7336-246e621a7f1mr48921665ad.31.1756160054190;
        Mon, 25 Aug 2025 15:14:14 -0700 (PDT)
Received: from owohausa.com ([2607:fb91:8286:4426:884a:9fb7:89f2:6888])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466887fef9sm76997815ad.114.2025.08.25.15.14.11
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Aug 2025 15:14:13 -0700 (PDT)
Message-ID: <20211203000000.144721552.1000.477867@mkrm.rakuten.com>
From: =?utf-8?Q?=E4=B8=89=E8=8F=B1UFJ=E3=83=A2=E3=83=AB=E3=82=AC=E3=83=B3=E3=83=BB=E3=82=B9=E3=82=BF=E3=83=B3=E3=83=AC=E3=83=BC=E8=A8=BC=E5=88=B8?= <noreply548@a2zpreview.com>
To: "=?utf-8?Q?linux-rockchip@lists.infradead.org?=" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?Q?=E3=80=90=E4=B8=89=E8=8F=B1UFJ=E3=83=A2=E3=83=AB?=
	=?utf-8?Q?=E3=82=AC=E3=83=B3=E3=83=BB=E3=82=B9=E3=82=BF=E3=83=B3?=
	=?utf-8?Q?=E3=83=AC=E3=83=BC=E8=A8=BC=E5=88=B8=E3=80=91=E5=8F=A3?=
	=?utf-8?Q?=E5=BA=A7=E4=BF=9D=E8=AD=B7=E3=81=AE=E3=81=9F=E3=82=81?=
	=?utf-8?Q?=E3=81=AE=E7=A2=BA=E8=AA=8D=E6=89=8B=E7=B6=9A=E3=81=8D?=
	=?utf-8?Q?=EF=BC=88=E6=9C=9F=E9=99=90=E3=81=82=E3=82=8A=EF=BC=89?=
Date: Tue, 26 Aug 2025 06:13:55 +0800
X-Priority: 3
MIME-Version: 1.0
X-Z-SRV: Company=%E6%A5%BD%E5%A4%A9%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97;surl=https://corp.rakuten.co.jp;comp_siu=https://s.yimg.jp/images/mail/companymark/rakuten/;
Received: from mu-deliverer-felix-release (unknown [100.117.66.224])
X-Yahoo-Newman-Property: optinmailpf
X-Yahoo-Newman-Id: 6f76f3f8-0709-438a-8a56-6885387a3a34
X-yahoo-newman-expires: 1756134000
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_151415_440798_4B79B021 
X-CRM114-Status: UNSURE (   2.20  )
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

44GK5a6i44GV44G+5ZCE5L2NDQoNCuW5s+e0oOOCiOOCiuS4ieiPsVVGSuODouODq+OCrOODs+OD
u+OCueOCv+ODs+ODrOODvOiovOWIuOOCkuOBlOWIqeeUqOOBhOOBn+OBoOOBjeOAgeiqoOOBq+OB
guOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0KDQrnj77lnKjjgIHlvZPnpL7jgafjga/j
gYrlrqLjgZXjgb7jga7lj6Pluqfmg4XloLHkv53orbfjgpLnm67nmoTjgajjgZfjgabjgIHjgrfj
grnjg4bjg6Dnm6PoppbjgpLlvLfljJbjgZfjgabjgYrjgorjgb7jgZnjgIIgIA0K44Gd44Gu6YGO
56iL44Gn44CB44GK5a6i44GV44G+44Gu44Ki44Kr44Km44Oz44OI44Gr44GK44GE44Gm5oOz5a6a
5aSW44Gu5o6l57aa5bGl5q2044GM5LiA6YOo56K66KqN44GV44KM44G+44GX44Gf44CCDQoNCuOB
pOOBjeOBvuOBl+OBpuOBr+OAgeOBlOacrOS6uuOBleOBvueiuuiqjeOBruOBn+OCgeOAgeS4i+io
mOOBrueiuuiqjeWwgueUqOODmuODvOOCuOOCiOOCiioqMjTmmYLplpPku6XlhoUqKuOBq+eiuuiq
jeaJi+e2muOBjeOCkuWujOS6huOBhOOBn+OBoOOBjeOBvuOBmeOCiOOBhuOBiumhmOOBhOeUs+OB
l+S4iuOBkuOBvuOBmeOAgg0KDQrilrzmnKzkurrnorroqo3nlKjvvIjmnInlirnmmYLplpPvvJoy
NOaZgumWk++8iSAgDQpodHRwczovL291ZWktc2MtbXVsb3NlbGVuc3RpLmNvbQ0KDQrigLvlvZPo
qbLjg6rjg7Pjgq/jga/jgYrlrqLjgZXjgb7lsILnlKjjgafjgZnjgILku5bogIXjgajlhbHmnInj
gZfjgarjgYTjgojjgYbjgZTms6jmhI/jgY/jgaDjgZXjgYTjgIIgIA0K4oC75pyf6ZmQ44KS6YGO
44GO44G+44GZ44Go44CB5Y+j5bqn44Gu5Yip55So5Yi26ZmQ77yI44Ot44Kw44Kk44Oz44O75Y+W
5byV44O75Ye66YeR44Gu5Yi26ZmQ562J77yJ44GM55m655Sf44GZ44KL5aC05ZCI44GM44GU44GW
44GE44G+44GZ44CCDQoNCuOAkOOBiuWVj+OBhOWQiOOCj+OBm+OAkSAgDQrkuInoj7FVRkrjg6Lj
g6vjgqzjg7Pjg7vjgrnjgr/jg7Pjg6zjg7zoqLzliLjjgIDjgqvjgrnjgr/jg57jg7zjgrXjg53j
g7zjg4jvvIjkvovvvIkgIA0K44OV44Oq44O844OA44Kk44Ok44Or77yaMDEyMC05NTktNTY2ICAN
CuWPl+S7mOaZgumWk++8muW5s+aXpSA5OjAwfjE3OjAw77yI5bm05pyr5bm05aeL6Zmk44GP77yJ
DQoNCuOBk+OBruODoeODvOODq+OBr+mAgeS/oeWwgueUqOOBp+OBmeOAguOBlOi/lOS/oeOBhOOB
n+OBoOOBhOOBpuOCguWvvuW/nOOBhOOBn+OBl+OBi+OBreOBvuOBmeOBruOBp+OAgeOBguOCieOB
i+OBmOOCgeOBlOS6huaJv+OBj+OBoOOBleOBhOOAgg0KDQrigJQg55m66KGM5YWDIOKAlCAgDQrk
uInoj7FVRkrjg6Ljg6vjgqzjg7Pjg7vjgrnjgr/jg7Pjg6zjg7zoqLzliLjmoKrlvI/kvJrnpL4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
