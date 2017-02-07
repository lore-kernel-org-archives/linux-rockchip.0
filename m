From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 7/7] drm/rockchip: Call drm_gem_object_release() to
 destroy GEM base
Date: Tue, 7 Feb 2017 22:05:39 +0900
Message-ID: <CAAFQd5DX9fTzKr8OA8eFs6QN2Mb2cSTSJCwgy3_Wd=ioxJ1oOg@mail.gmail.com>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
 <1486456773-19233-1-git-send-email-mark.yao@rock-chips.com>
 <20170207123707.GC18315@ulmo.ba.sec>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170207123707.GC18315@ulmo.ba.sec>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgTWFyaywKCk9uIFR1ZSwgRmViIDcsIDIwMTcgYXQgOTozNyBQTSwgVGhpZXJyeSBSZWRpbmcg
PHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBGZWIgMDcsIDIwMTcg
YXQgMDQ6Mzk6MzNQTSArMDgwMCwgTWFyayBZYW8gd3JvdGU6Cj4+IEZyb206IFRvbWFzeiBGaWdh
IDx0ZmlnYUBjaHJvbWl1bS5vcmc+Cj4+Cj4+IFdoZW4gY29udmVydGluZyB0aGUgZHJpdmVyIHRv
IHVzZSBzaG1lbS1iYWNrZWQgR0VNcyBmb3IgSU9NTVUtZW5hYmxlZAo+PiBzeXN0ZW1zLCB3ZSBm
b3Jnb3QgdG8gYWRkIGNhbGxzIHRvIGRybV9nZW1fb2JqZWN0X3JlbGVhc2UoKSwgd2hpY2ggZ2F2
ZQo+PiB1cyBhIHF1aXRlIG5pY2UgbWVtb3J5IGxlYWsuIFRoaXMgcGF0Y2ggYWRkcyB0aGUgbWlz
c2luZyBjYWxscy4KPj4KPj4gRml4ZXM6IGYxMWQ1ZjAgKCJGUk9NTElTVDogZHJtL3JvY2tjaGlw
OiBEbyBub3QgdXNlIERNQSBtYXBwaW5nIEFQSSBpZgo+PiBhdHRhY2hlZCB0byBJT01NVSBkb21h
aW4iKQoKU2luY2UgdGhlIHBhdGNoIGJlaW5nIGZpeGVkIGlzIGFsc28gYSBwYXJ0IG9mIHRoaXMg
c2VyaWVzLCB0aGUgZml4CmNvdWxkIGJlIGp1c3Qgc3F1YXNoZWQgZGlyZWN0bHkgKHdpdGggc2ln
bi1vZmYgbGlzdHMgbWVyZ2VkKS4gU2FtZSBmb3IKcGF0Y2ggNi83LgoKQmVzdCByZWdhcmRzLApU
b21hc3oKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJp
LWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
