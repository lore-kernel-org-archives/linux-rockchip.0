Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE553FF885A
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 23:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Muiv1lWxR7k9ZZHGqSgK9VBfvAz7Wt+VnsBVYZ5IflM=; b=lMM
	YU74oXs7I4U9rKsfq1YrWFByNULEVyO+AK1ccpEtsEhXVReu9/XGgxmU4mCV26PaLzb96NsY3ixir
	jpylszIqt8jigtRSTvl5VclHbBnV1Mfrafwlk4GMSZevZutXgrL08TWurO6CIspIUDLMqK2jMt//e
	t4J/J6V+UMEj3NwieB4so95fV07jYSun0/ZTfagYE/BlZ5THEK9+bgOHFV6R+p5ZSPIGMEdufQVBI
	sCy3yI6PAso4GduClPOhy1rfSHzoE6yIi0ZpMaXpK+/xIF3/TkxiHGlraBm5GrYNLo/NjOSzr9nAt
	DMD+Tl9dILX1Gd3kPKnjyE4qyMoF9Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmoY-0000000F5YQ-3SSc;
	Sat, 25 Apr 2026 23:53:34 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGmoW-0000000F5Y2-0nEm
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 23:53:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id 2adb3069b0e04-5a0ff30b240so13576147e87.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 16:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777161209; cv=none;
        d=google.com; s=arc-20240605;
        b=kGlYE5dAer63AoruI8c5qXgmVvZ5BA+qVtYQSOfDvwB/hAn+H7ieuDc8HK7OWuZS/5
         JzlyMqjN9PVHfOZMTB4rO454wpoiiqjp2ppaghsxhZPloH3SeBT/NFroAoE2TLuDYZJT
         VOoh7ybwrf7kaJIYRu/iSr3byq+NI1i+zCyzbZvjR0cn9J1iRVdJbjQULkhYf3tV7pPM
         BhniMhFnEftSbWgBZAkOMzrGK5jbVQd2yBzHnA5y03ZcrZG63KwOcoV91mKmJyNDQFvE
         BHqInWxszHQjQD72EThJF9Tt3EZuufsdL7P/6Brd5zWexVr29KpPR7H4LCjTjAWV3dXo
         Zdvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date
         :list-unsubscribe-post:feedback-id:list-unsubscribe:from
         :mime-version:dkim-signature;
        bh=xWs/nRpoIEssBID+DfsVj04PZPX2YSUr3KPIbro0cKQ=;
        fh=+S59iss1khD7Phgpxaw6TfzdkZnYoHq76HDPsYgQzeQ=;
        b=bTaSpfUj6dfjuJ8T8lY8uMotC6yFsOnxiJNdn7LtS8YcGuQqT1vXYL+W/IYWAATT2h
         FDaKDSfCGf2CrECZ5i4h9BQpxn2QChNAfPDNXyTeWpOUIq0zxehQfbhyg9Vqd4Lj0A0R
         Ass0tXjDsINzdsiICNRUh4AnYhQYSqAvUFwcruWtgDP/Oz7FrE//5qdBD/HviepfShcn
         FNXWkWb540P1MDmeZRAGJJ/itx/RSfCV/WMFbx2IsMWz/D7Ky4iP/anIUP4dpyxMQ+sf
         E8QfOn8cNVqRGDrDAdLk57uur8jWVdlOLXXQThL5IvYswyNWK49zeUf/pb++wBwE6wKB
         AwPg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shjpbrand.com; s=google; t=1777161209; x=1777766009; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date
         :list-unsubscribe-post:feedback-id:list-unsubscribe:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xWs/nRpoIEssBID+DfsVj04PZPX2YSUr3KPIbro0cKQ=;
        b=lvgKcv4kU43qbc61v316BTyyHDg7M2zSmwbCzn+Qi1c5LSKlUqXbdVKtGuGlXPHk26
         /jgmqPOb+9ynyDqasaJdKKtAzeay0QW9joU0Tj7wPMnv+Fw11XcdjpIXIW9iQjLR5MgD
         NjovE/JT13AjaSU7TSJgFcNu5VxXQCeWPkJtIluOVhp2y6wypL9w0yBF2heJUWi2Baib
         B06IFYC7mcqyJ7sTyvqdvlh6jMu8XI7L17iI7bSsd0XNI1VP3jRrgp29o+/3VZDa7vVm
         vn7jqOnIHu5rzUTl5HtTHe9d5vqJ732k4xohGHBty2bCxUwq35c2vO+0szBe/OMLPCma
         69Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777161209; x=1777766009;
        h=content-transfer-encoding:to:subject:message-id:date
         :list-unsubscribe-post:feedback-id:list-unsubscribe:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWs/nRpoIEssBID+DfsVj04PZPX2YSUr3KPIbro0cKQ=;
        b=h21tEwHLWkzT95ivrDbddRW2XJmIm0MdddMSexONsD7c9l/KHAeJph6G1MWAbklH2d
         1JtVhM8z/INug5+m7XS2f1vaJCvbERDRRZ+qMs/vY0U+EBhuSkDew9+JsiCf1nYauwwx
         Oij/ubXz/aHz7XpBDWN0tB4no37ejX/hHXpBIYNmxGCF+PshXyGihtw3CHWJxdU7sGkV
         aZiz0lafoCCyaQDkne2sevQwbfBy3VDzUJn2eMNQV+AXLI1YAIW1JwlvCKualpHcykK7
         h+QgmPaWssflLd9tByy6eGntb4BXi13KsyUqHr3Dn+yWppbAOifBzea8kTlfC8VRyDOg
         c5Ag==
X-Gm-Message-State: AOJu0YxNLnWa9+7jqMcvfkoDbSBdBC17MCrGoXBwjEwdGrYJ6OA2yRqz
	hzo6JhVhi706nVaVR0S14YmLZ4D6WcKQbJrg54ylUhPl+uykK8nV5dXelJdoCM32Gw8pBGDiBYo
	GQMxE7W4foVTOpsRA8XJ/dnQynmSSS6Dc08nE94/Ygr0ZCr8fy/2Cy8WzDKY=
X-Gm-Gg: AeBDietKleE6zdboEXiD2grBISVrHi07V/oo3djfrN21ca1KCFQ7ZseQMjfzbhUofdD
	jqx2wYKKoHN63OhH/gcazgjqkBwsPffi5SBPHFk+Vw3VkiFAsyWbWyZx2iDDYF0AQVvORGYPwNm
	NALEgi7+bTjcr6OEh7aQi+L+257K9+GH3LgzWbmCkqUHM917r72A1PazTaffW16I46JQ9XzagAF
	W1tFj8YaZjb6gi6PZmrEPHN4d69oG9IbwO5TaNXhv1IOnMUnekCgEVcyLi03DsG6LF2dLKz/iD4
	eQ==
X-Received: by 2002:a05:6512:23a1:b0:5a4:a85:ba2d with SMTP id
 2adb3069b0e04-5a4172c7b23mr11103021e87.16.1777161209032; Sat, 25 Apr 2026
 16:53:29 -0700 (PDT)
Received: from 784122980633 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 25 Apr 2026 18:53:28 -0500
Received: from 784122980633 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 25 Apr 2026 18:53:28 -0500
MIME-Version: 1.0
From: =?UTF-8?B?44GU5qGI5YaF?= <by@shjpbrand.com>
X-Auto-Response-Suppress: OOF, AutoReply
X-Entity-Ref-ID: Kz4QeYzPcVO93kbr8OX3mbpN
Feedback-ID: camp_campaign_6819:node68:sys:mx.icloud.com
X-Mailer: Microsoft Outlook 15.0
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Date: Sat, 25 Apr 2026 18:53:28 -0500
X-Gm-Features: AQROBzCbo5tY4sm0ULZuISkKzC0JA0EJkYt9hGUETg0m5gIORzvL25YSyRN3rRo
Message-ID: <CAL=A5p3S-w68C2=ktOOQCUT4mmWG1Pn6GpX64ze12NZqY_YpGw@mail.gmail.com>
Subject: =?UTF-8?B?44CQ5qW95aSp44Kr44O844OJ44CR5oyv5pu/5LiN6IO944Gr5Ly044GG44GK5pSv5omV?=
	=?UTF-8?B?44GE5omL57aa44GN44Gu44GK6aGY44GE?=
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_165332_256091_40357F9F 
X-CRM114-Status: UNSURE (  -0.05  )
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

44GE44Gk44KC5qW95aSp44Kr44O844OJ44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr
44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuOBlOeZu+mMsuOBhOOBn+OBoOOB
hOOBpuOBiuOCiuOBvuOBmeOBiuaUr+aJleOBhOWPo+W6p+OCiOOCiuOAgeiHquWLleW8leOBjeiQ
veOBqOOBl+OCkuWun+aWveOBhOOBn+OBl+OBvuOBl+OBn+OBjOOAgeiqoOOBq+aui+W/teOBquOB
jOOCieaMr+abv+acqua4iO+8iOaui+mrmOS4jei2s+etie+8ieOBqOOBquOCiuOBvuOBl+OBn+OA
gg0KDQrjgaTjgY3jgb7jgZfjgabjga/jgIHkuIvoqJjlhoXlrrnjgpLjgZTnorroqo3jga7jgYbj
gYjjgIHoh7PmgKXjgIHjgYrmlK/miZXjgYTmiYvntprjgY3jgpLlrozkuobjgZXjgZvjgabjgYTj
gZ/jgaDjgZHjgb7jgZnjgojjgYbjgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7jgZnjgIINCg0K4pag
44GU6KuL5rGC5YaF5a65DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0K44CQ44GU6KuL5rGC6YeR6aGN5ZCI6KiI44CRIDIzLDk2MOWGhg0K44CQ5pSv
5omV5pyf6ZmQ44CRIDIwMjblubQ05pyIMjfml6UNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQrilqDjgYrmlK/miZXjgYTmlrnms5UNCuePvuWcqOOA
geWIqeS+v+aAp+WQkeS4iuOBruOBn+OCgeOAjFBheVBheeOAjeOBq+OCiOOCi+OCquODs+ODqeOC
pOODs+axuua4iOOCkuaJv+OBo+OBpuOBiuOCiuOBvuOBmeOAgg0K5LiL6KiYVVJM44KI44KK44CB
44GK5omL57aa44GN44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCuKWvFBheVBheeax
uua4iOOBiuaJi+e2muOBjeeqk+WPow0KaHR0cHM6Ly9wYXVsY29mZmVlamFwYW4uY29tL2luZm9y
bWF0aW9uL25vdGljZQ0KDQrigLvmnKzjgYrmiYvntprjgY3jgavjgojjgovmiYvmlbDmlpnjga/j
gYvjgYvjgorjgb7jgZvjgpPjgIINCuKAu+OBiuaUr+aJleOBhOOBrueiuuiqjeOBjOWPluOCjOOC
i+OBvuOBp+OAgeOCq+ODvOODieOBruOBlOWIqeeUqOOBjOWItumZkOOBleOCjOOCi+WgtOWQiOOB
jOOBlOOBluOBhOOBvuOBmeOAgg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCuKWoOOBlOazqOaEj+S6i+mghQ0K44O75pys44Oh44O844Or44Go6KGM
44GN6YGV44GE44Gr44GU5YWl6YeR44GE44Gf44Gg44GE44Gf5aC05ZCI44Gv44CB5L2V5Y2S44GU
5a656LWm44GP44Gg44GV44GE44CCDQrjg7vmnKzjg6Hjg7zjg6vjga/pgIHkv6HlsILnlKjjga7j
gZ/jgoHjgIHov5Tkv6HjgYTjgZ/jgaDjgY/jgZPjgajjga/jgafjgY3jgb7jgZvjgpPjgIINCg0K
4pag55m66KGM5YWDDQrmpb3lpKnjgqvjg7zjg4nmoKrlvI/kvJrnpL4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
